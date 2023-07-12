using System.Buffers;
using System.IO.Pipelines;
using System.Text;

const int bufferSize = 64;
using var stream = File.OpenRead("sample.txt");
var pipeReader = PipeReader.Create(
    stream, 
    new StreamPipeReaderOptions(bufferSize: bufferSize));

while (true)
{
    var block = await pipeReader.ReadAsync();

    SequencePosition processed = block.IsCompleted switch
    {
        false => ProcessBlock(block.Buffer, (byte)'\n'),
        true => ProcessChunk(block.Buffer),
    };

    pipeReader.AdvanceTo(processed, block.Buffer.End);

    if (block.IsCompleted)
    {
        break;
    }
}

await pipeReader.CompleteAsync();

///////////////////////////////////////////////

SequencePosition ProcessBlock(ReadOnlySequence<byte> block, byte delimeter)
{
    var reader = new SequenceReader<byte>(block);
    while (reader.End is not true)
    {
        if (reader.TryReadTo(
            out ReadOnlySequence<byte> chunk, 
            delimeter, 
            advancePastDelimiter: true))
        {
            ProcessChunk(chunk);
        }
        else 
        {
            break;
        }
    }

    return reader.Position;
}

SequencePosition ProcessChunk(ReadOnlySequence<byte> chunk)
{
    var bytes = chunk.ToArray();
    var result = Encoding.UTF8.GetString(bytes);
    Console.WriteLine(result);
    return chunk.GetPosition(chunk.Length);
}
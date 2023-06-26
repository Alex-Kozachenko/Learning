using System.Buffers;
using System.IO.Pipelines;

const int BufferSize = 64;

using var stream = File.OpenRead("sample.txt");
var reader = PipeReader.Create(
    stream, 
    new StreamPipeReaderOptions(bufferSize: BufferSize));

// using var stdOut = new StreamWriter(Console.OpenStandardOutput());

while (true)
{
    var result = await reader.ReadAsync();
    var buffer = result.Buffer;

    var consumed = ProcessBuffer(buffer, result.IsCompleted);
    if (result.IsCompleted)
    {
        break;
    }

    reader.AdvanceTo(consumed, buffer.End);
}

reader.Complete();

SequencePosition ProcessBuffer(
    in ReadOnlySequence<byte> sequence, 
    bool isCompleted)
{
    var reader = new SequenceReader<byte>(sequence);
    while (!reader.End)
    {
        if (reader.TryReadTo(
            out ReadOnlySequence<byte> token,
            (byte)'\n', 
            advancePastDelimiter: true))
        {
            var line = System.Text.Encoding.UTF8.GetString(token.ToArray());
            Console.WriteLine(line);
        }
        else if (isCompleted)
        {
            var finalToken = sequence.Slice(reader.Position);
            var line = System.Text.Encoding.UTF8.GetString(finalToken.ToArray());
            Console.WriteLine(line);
            reader.Advance(finalToken.Length);
        }
        else // ?
        {
            break;
        }
    }

    return reader.Position;
}
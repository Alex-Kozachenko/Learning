const char ZeroChar = '\0';
const char NewLineChar = '\n';
const int BufferSize = 64;

using var stream = File.OpenRead("sample.txt");
using var reader = new StreamReader(stream);
using var stdOut = new StreamWriter(Console.OpenStandardOutput());
Memory<char> block = new char[BufferSize];

while (await TryReadBlockAsync(reader, block))
{
    var processed = ProcessBlock(block, stdOut);
    ResetBlock(block.Span, processed);    
}

/////////////////////////////////////////////////

void ResetBlock(Span<char> block, int processed)
{
    var chunk = block.Slice(processed);
    chunk.CopyTo(block);
    block
        .Slice(chunk.Length)
        .Fill(ZeroChar);
}

int ProcessBlock(ReadOnlyMemory<char> block, StreamWriter stdOut)
{
    var chunk = block.Span;
    while (true)
    {
        var line = ExtractLine(chunk);
        if (line.IsEmpty)
        {
            break;
        }
        chunk = chunk.Slice(line.Length);
        stdOut.Write(line);
    }
    return block.Length - chunk.Length;
}

ReadOnlySpan<char> ExtractLine(ReadOnlySpan<char> buffer)
    => buffer.IndexOf(NewLineChar) switch
    {
        -1 => Span<char>.Empty,         
        var end  => buffer.Slice(0, end + 1)
    };

async Task<bool> TryReadBlockAsync(StreamReader reader, Memory<char> chunk)
    => chunk.Span.IndexOf(ZeroChar) switch 
    {
        -1 => throw new InternalBufferOverflowException(
            "Buffer: no free space available."),
        var offset => await reader.ReadBlockAsync(chunk.Slice(offset)) != 0
    };
const char ZeroChar = '\0';
const char NewLineChar = '\n';
const int BufferSize = 64;

using var stream = File.OpenRead("sample.txt");
using var reader = new StreamReader(stream);

var buffer = (Span<char>) stackalloc char[BufferSize];

while (TryReadBlock(reader, buffer))
{
    var chunk = buffer;
    while (true)
    {
        var line = ExtractLine(chunk);
        if (line.IsEmpty)
        {
            break;
        }
        chunk = chunk.Slice(line.Length);
        Console.Write(line.ToString());
    }
    
    chunk.CopyTo(buffer);
    buffer
        .Slice(chunk.Length)
        .Fill(ZeroChar);
}

bool TryReadBlock(StreamReader reader, Span<char> chunk)
    => chunk.IndexOf(ZeroChar) switch 
    {
        -1 => throw new InternalBufferOverflowException(
            "Buffer: no free space available."),
        var offset => reader.ReadBlock(chunk.Slice(offset)) != 0
    };

ReadOnlySpan<char> ExtractLine(ReadOnlySpan<char> buffer)
    => buffer.IndexOf(NewLineChar) switch
    {
        -1 => Span<char>.Empty,         
        var end  => buffer.Slice(0, end + 1)
    };
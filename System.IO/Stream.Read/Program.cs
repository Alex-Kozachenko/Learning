using System.Text;

using var stream = File.OpenRead("sample.txt");
using var reader = new StreamReader(stream);

const int bufferSize = 64;
var buffer = new char[bufferSize];
var result = new StringBuilder();

while (await TryReadAsync(reader, buffer))
{
    var bufferSpace = new BufferSpace(buffer.Length);
    while (TryGetLine(buffer, bufferSpace, out var line))
    {
        // result.Append(line);
        for (int i = 0; i < line.Length; i++)
        {
            result.Append(buffer[i]);
        }        
    }
    Clear(buffer, bufferSpace);
}

Console.WriteLine(result);

async Task<bool> TryReadAsync(StreamReader reader, char[] buffer)
{
    var occupied = Array.IndexOf(buffer, '\0');
    occupied = occupied == -1 ? 0 : occupied;
    var available = buffer.Length - occupied;

    var bytesRead = await reader.ReadAsync(
        buffer,
        occupied,
        available);

    return bytesRead != 0;
}

bool TryGetLine(char[] buffer, BufferSpace bufferSpace, out char[] line)
{
    var iDelimeter = Array.IndexOf(
            buffer,
            '\n', 
            bufferSpace.Processed,
            bufferSpace.Remaining);

    if (iDelimeter == -1)
    {
        line = new char[0];
        return false;
    }

    var offset = iDelimeter + 1 - bufferSpace.Processed; 

    line = new char[offset];
    Array.Copy(buffer, bufferSpace.Processed, line, 0, offset);

    bufferSpace.Process(offset);
    return true;
}

void Clear(char[] buffer, BufferSpace bufferSpace)
{
    if (bufferSpace.Remaining is 0)
    {
        return;
    }

    var remainingBuffer = new char[bufferSpace.Remaining];
    Array.Copy(
        buffer,
        bufferSpace.Processed,
        remainingBuffer,
        0,
        bufferSpace.Remaining);

    Array.Clear(buffer);    
    Array.Copy(
        remainingBuffer, 
        buffer, 
        remainingBuffer.Length);
}
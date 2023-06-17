using System.Text;

// Stream.Read v1.0
// A student-like way to process a stream:
// - fill a buffer in a loop, until the end;
// - parse the buffer per iteration (extract a line);
// - leave the rest of bytes for next iteration.

/*
    the filled buffer consist of two parts:
    - occupied: the total amount of bytes from Read operation.
    - processed: the amount of bytes processed by the parser.

    The program works in next steps:
    1. Fill up the buffer from a stream.
    2. Seek the lines inside of a buffer.
    3. Rearrange the buffer: remove processed parts.
*/

const int bufferSize = 64;

var buffer = new char[bufferSize];
var nBufferOccupied = 0;
var nBufferProcessed = 0;

using var stream = File.OpenRead("sample.txt");
using var reader = new StreamReader(stream);
var result = new StringBuilder();

while (true)
{
    var remaining = buffer.Length - nBufferOccupied;

    // 1.
    var bytesRead = await reader.ReadAsync(
        buffer, 
        nBufferOccupied,
        remaining);

    nBufferOccupied += bytesRead;   
    
    if (bytesRead == 0)
    {
        break;
    }    

    RenderOccupation(nBufferOccupied, remaining);

    // 2.
    var iDelimeter = 0;
    while (true)
    {
        iDelimeter = Array.IndexOf(
            buffer, 
            '\n', 
            nBufferProcessed,
            nBufferOccupied - nBufferProcessed);

        if (iDelimeter == -1)
        {
            break;
        }

        for (int i = nBufferProcessed; i < iDelimeter + 1; i++)
        {
            result.Append(buffer[i]);
        }

        nBufferProcessed = iDelimeter + 1;
    }
    
    // 3. Rearrange the buffer.
    var nBufferUnprocessed = buffer.Length - nBufferProcessed;
    var newBuffer = new char[nBufferUnprocessed];
    Array.Copy(
        buffer,  // sourceArray
        nBufferProcessed, // sourceIndex
        newBuffer, // destArray
        0, // destIndex
        nBufferUnprocessed); // length

    Array.Clear(buffer);
    Array.Copy(newBuffer, buffer, newBuffer.Length);

    nBufferOccupied = nBufferUnprocessed;
    nBufferProcessed = 0;
}

Console.WriteLine(result);

void RenderOccupation(decimal occupied, decimal remaining)
{
    const char chOccupied = '#';
    const char chRemaining = '-';
    var total = occupied + remaining;
    var occupiedFraction = (byte) ((occupied / total) * 10);
    
    var line = Enumerable.Repeat(chRemaining, 10).ToArray();
    for (int i = 0; i < occupiedFraction; i++)
    {
        line[i] = chOccupied;
    }
    
    Console.WriteLine(line);
}
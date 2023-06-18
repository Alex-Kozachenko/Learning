public class BufferSpace
{
    public int Total { get; }

    // a flow-control pair
    public int Processed { get; private set; }
    public int Remaining => Total - Processed;

    private BufferSpace()
    {

    }

    public BufferSpace(int total)
    {
        Total = total;
    }

    public void Process(int offset)
    {
        Processed += offset;
        Validate();
    }

    private void Validate()
    {
        if (Processed > Total)
        {
    throw new IndexOutOfRangeException(
                $"{nameof(Processed)} should be less than {nameof(Total)}.");
        }
    }
}
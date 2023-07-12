Keywords: memory, cursor, pipe, stream

Since v2 I've migrated to modern concepts from `System.IO.Buffers`, which consists of new abstractions over data and new tools.

# Abstractions

`Memory` // - represents a contigous block of memory

`Span` // - same as `Memory`, but stack-only.

`ReadOnlySequence` // - A discontigous blocks of memory. Self-managed chain of blocks.
    `.Slice` // - able to get a sub-`ReadOnylSequence` from interval
		(start, [end=lenght])

`SequencePosition` // - A cursor on anything.

So, the `Buffers` namespace extends the abstractions for streaming, introducing the `cursor`-like approach, which iterates over block of memory with auto-calculations for indexes.

Worth mentioning, that any part of the block-of-memory could be mapped to any sub-block without any memory loss.

# Tools:

But where to get such blocks?
Well, in case of reading the streams, there is a `PipeReader`, which populates the buffer on its own. All it needs - is telling him that some part been processed.

`PipeReader` // - A `Reader` part of the `Pipe`.
    .`Create(stream)` // static
    .`ReadAsync`
    .`AdvanceTo`
    .`Complete`

A ReadAsync makes a buffer of `ReadOnlySequence`,
which could be processed with `SequenceReader`:

`SequenceReader` // - A Tokenizer for a `ReadOnlySequence`
	.TryReadTo
	.Advance
	.Position

Dont forget to tell the `PipeReader` back, which position has been analyzed and which is processed:
`reader.AdvanceTo(consumed, buffer.End);`

# Conclusion

The `Span` have opened a way for a new concepts for a .NET, which've been in for,like, in T-SQL, already. It seems much bigger than it looked like at the first glance,
so.

It`s a strong tool.
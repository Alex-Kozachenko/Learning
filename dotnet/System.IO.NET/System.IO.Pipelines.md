> async? 

> What is `System.IO.Pipelines`?
The hi-perf `API` for dealing with `IO`.

Traditionally, the `IO` operations are performed via `Streams` which is a general abstraction in the computer programming.

The `Streams` are read block-by-block.

But how to parse the `Stream` content if:
1. The content doesn't fit one block?
2. The content is interrupted by the end-of-block?

Traditionally, these issues has been addressed anytime the IO operation happened by managing the buffer manually.

Nowadays, there is a fine-tuned library, which is a part of .NET ecosystem (or BCL? or CoreFX? or what?), which converts the process of the stream reading into the `Pipeline` abstraction.

# Pipeline

The pipeline is a stream which allows to read and write a flexible amount of data. The buffers and block-by-block reading are still there, but there are some `cursors` around and automatic buffer manager.

> `cursor`
> a concept from a database development, which points the offset of the stream. It's designed to have any amount of such pointers onto the signle read-source.

# Pipeline reading

The pipeline reading is done via the `PipeReader`.

> `PipeReader`
> Reads a `Sequence` from the Pipe`s inner buffers.

> `Sequence`
> virtually contiguous byte array.

Just call the `PipeReader.Read()`, and get the `Result` object.

> `Result`
> A container for Result buffer, IsCompleted flag, and (?).

## Processing the read

Next, need to process the `Sequence` from the `Read()`.
Take the `Result` buffer, make own little pipe-reader-like wrapper, and proceed delimeter-by-delimeter.

The own wrapper is a `SequenceReader`.

> `SequenceReader`
> A tool which is able to process a `Sequence` in `cursor`-like way.

Once the processing is done, it's required to return the `SequencePosition` back to the `PipeReader` via the `Advance` method, so the Reader will be able to clear some buffer (which is static-sized), and fill with more data. 
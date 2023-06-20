Links:
- https://www.codemag.com/Article/2207031/Writing-High-Performance-Code-Using-SpanT-and-MemoryT-in-C

v2.1
------------
- Moved from Span to Memory. 
  It was a false approach, because the Span represents a slice of data,
  while Memory is designed for all kinds of buffers.

v2.0
------------
- Introduced the Span.Slice approach.
- A **LOT** of redundancy been removed.

v1.1
------------
- Refactoring: BufferSpace, helper methods. (somehow, the BufferSpace took a while.)

v1.0
------------
- Introduced an algorithm in a messy student way.
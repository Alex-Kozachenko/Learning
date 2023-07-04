PATTERNNAME
=========================


> 

Match rules
------------

Samples
------------


In a constant pattern, you can use any constant expression, such as:

- an integer or floating-point numerical literal
- a char
- a string literal.
- a Boolean value true or false
- an enum value
- the name of a declared const field or local
- null

Note: The expression must be a type that is convertible to the constant type, with one exception
Note: except `Spans` from C#11.

```
    1 => 12.0m,
    2 => 20.0m,
    3 => 27.0m,
    4 => 32.0m,
    0 => 0.0m,
    _ => throw new ArgumentException()
```

```
// null constant pattern
// and discard
return source switch
{
	null => throw new NullException();
	Array _ => "array",
	_ => source,
}

if (source is not null)
{
	return source;
}
```
---
[Pattern Matching](<../Pattern matching.md>)
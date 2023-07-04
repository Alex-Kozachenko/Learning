Declaration Pattern Kind
=========================

> creates new variable of type `T`.

Match rules
------------

matches when expression result:
- is not null.
and:
- is `T`
- or implements interface `T`
- or implicitly convertable to `T`
- or `Nullable<T>`
- or box-unboxable to `T`

Samples
------------

> basic
```
source switch
{
	Array ar => ar.ToList(),
	List list => list
}
```

> anonymous variable
```
source switch
{
	Array _ => "array",
	List => "list"
}
```

> boxing
```
int? xNullable = 1;
int y = 2;
object yBoxed = y;
if (xNullable is int a 
	&& yBoxed is int b)
	{
		return a + b;
	}
```
---
[Pattern Matching](<../Pattern matching.md>)
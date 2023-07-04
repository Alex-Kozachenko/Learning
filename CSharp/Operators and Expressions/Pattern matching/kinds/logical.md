PATTERNNAME
=========================

> 

Match rules
------------

Samples
------------

Since C#9, the `not`, `and`, `or` pattern combinators are available to create the following logical patterns:
1. `Negation`: 
	 `not` pattern matches the expression 
	 when the negated pattern doesn't match the expression.
`if (input is not null)`

2. `Conjunctive`: 
	 `and` pattern matches an expression,
	 when both patterns match the expression.
```
	return measure switch { 
		< -40 => "too low", 
		>= -40 and < 0 => "low", 
		>= 0 => "fine",
		double.NaN => "NaN"
```
	
3. `Disjunctive`: 
	 `or` pattern that matches an expression,
	 when either pattern matches the expression
```
return month switch 
{
	3 or 4 or 5 => "spring" 
}
```
---
[Pattern Matching](<../Pattern matching.md>)
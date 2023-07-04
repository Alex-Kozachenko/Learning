PATTERNNAME
=========================

> 

Match rules
------------

Samples
------------

use a property pattern to match an expression's properties or fields against nested patterns

` static bool IsConferenceDay(DateTime date) => date is { Year: 2020, Month: 5, Day: 19 or 20 or 21 }; `


A property pattern matches an expression
- when an expression result is non-null 
- and every nested pattern matches the corresponding property or field of the expression result.

---
[Pattern Matching](<../Pattern matching.md>)

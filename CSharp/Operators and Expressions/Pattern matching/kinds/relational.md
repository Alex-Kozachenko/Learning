PATTERNNAME
=========================

> 

Match rules
------------

Samples
------------


In a relational pattern, you can use any of the relational operators <, >, <=, or >=. 

A relational pattern doesn't match an expression,
If an expression result:
- is `null`
- or fails to convert to the type of a constant by a nullable or unboxing conversion

```
static string Classify(double measurement) => measurement switch
{
    < -4.0 => "Too low",
    > 10.0 => "Too high",
    double.NaN => "Unknown",
    _ => "Acceptable",
};
```
Note: The right-hand part of a relational pattern must be a constant expression. The constant expression can be of an integer, floating-point, char, or enum type.


To check if an expression result is in a certain range, match it against a conjunctive and pattern, as the following example shows
```
static string GetCalendarSeason(DateTime date) => date.Month switch
{
    >= 3 and < 6 => "spring",
    >= 6 and < 9 => "summer",
    >= 9 and < 12 => "autumn",
    12 or (>= 1 and < 3) => "winter",
    _ => throw new ArgumentOutOfRangeException(nameof(date), $"Date with unexpected month: {date.Month}."),
};
```
---
[Pattern Matching](<../Pattern matching.md>)
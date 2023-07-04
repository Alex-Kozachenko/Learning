Pattern Matching
==============

Match an input expression against any number of characteristics.

Who supports pattern matching:
- `is` expression
- `switch` expression
- `switch` statement

> **Note:** patterns can be combined using `boolean logic` keywords `and` `or` `not`.

Pattern kinds:
==============

> Assigners:
- [Declaration](kinds/declaration.md): check type => assign. `is string myMessage`.
- [Var](kinds/var.md): assign anything. `is var myMessage`.

> Testers:
- [Constant](kinds/constant.md): test against a constant. `a is 0`.
- [Relational](kinds/relational.md): compare against a constant. `a is <= 0`.
- [Property](kinds/property.md): test against inner properties or field. `Color is { Red: 255 }`.
- [Type](kinds/type.md): check type. `is string`.

> Complex:
- [List](kinds/list.md): test if sequence elements match corresponding nested patterns. `new[] {1,2} switch { [1,_] => "One" }`.
- [Logical](kinds/logical.md): test against a logical combination. `is true and not null`.
- [Positional](kinds/positional.md): deconstruct an expression result and test if the resulting values match nested patterns. `point switch { (0,0) => "Zero" }`.

> Extra:
- [Discard](kinds/discard.md): match any, discard. `str switch { _ => "any" }`.
- [Paranthesized](kinds/paranthesized.md): nested sub-patterns. `is true and (not null or "")`.

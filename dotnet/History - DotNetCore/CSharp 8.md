# Nullable reference types

It's a feature enables static analysis on reference types, which assumes that every reference type is not nullable by its nature.
So if a developer missed a null-check, the compiler will warn.

The following rules apply:
- Unable to create a `T` variable with null value.
- Able to crate a `T?` variable with null value, or assign later.
- A varbiable `T?` assumed non-null if null-forgiving operator applied `!`.
> both variables are the same type.

In general, 
A nullable reference type can't be used as a base class or implemented interface. 
A nullable reference type can't be used in any object creation or type testing expression. 
A nullable reference type can't be the type of a member access expression. 

> not-null and maybe-null.
The compiler tracks the null-state of each reference variable as either not-null or maybe-null. 
The default state of a non-nullable reference is not-null. The default state of a nullable reference is maybe-null.

[Refs: .NET Core 3.x]

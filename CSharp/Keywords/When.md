`When` is a contextual keywords 
to specify filter conditions
in the following contexts:

1. In a `catch` clause 
	 of a `try-catch` or `try-catch-finally` statement.

2. As a `case guard` in the switch expression.

3. As a `case guard` in the switch statement.

```
// 1.
try 
{
    throw new AggregateException(new Exception("foo"));
}
catch (AggregateException ex) 
    when (ex.InnerExceptions.Count is not 0)
{
    Console.WriteLine(ex.InnerExceptions);
}

// 2.
var point = new int[] { 1, 2 };

var a = point switch 
{
    [>=0 and var x, 
     >=0 and var y]
      when x < y
      	=> "x < y",
    _ 	=> "Crap"
};

Console.WriteLine(a);

// 2.1


// 3.
var point = new int[] { 1, 2 };

switch (point)
{
    case 
        [>=0 and var x, 
        >=0 and var y]
    when x < y : 
        Console.WriteLine("x < y");
        break;
};

```

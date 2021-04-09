## **Control Flow**

### [Table of Content](#table-of-content)

- [For loop](#for-loop)
- [For-In Loops](#for-in-loops)
- [While loops](#while-loops)
- [Conditional Statements](#conditional-statements)
  - [If](#if)
  - [Switch](#switch)
  - [Compound case](#compound-case)
  - [Interval Matching](#interval-matching)
- [Iterating Over a Dictionary](#iterating-over-a-dictionary)

### **Control Flow**

- Swift provides a variety of control flow statements.
- These include
  - for-in loops
  - while loops

### For-In Loops

- for-in loop to iterate over a sequence.
- example : iterate over the items in an array:

```swift

let names  = ["John Petrucci","John Mayer","John Cena","John Wick","John Mac"];

for name in names {
    print(name);
}

```

- iterate over a dictionary to access its key-value pairs.

```swift

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

```

### with numeric ranges.

```swift

for index in 1...5 {
    print(index);
}

```

### using an underscore in place of a variable name.

- If you don’t need each value from a sequence, you can ignore the values by using an underscore

```swift

let base = 3;
let power = 10;

var answer = 1 ;

for _ in 1...power {
    answer *= base;
}
print("\(base) to the power of \(power) is \(answer)");

```

### more example

- Use the half-open range operator (..<) to include the lower bound but not the upper bound.

```swift

let minutes = 60;
for tickMark in 0..<minutes {
    print(tickMark);
}

```

- Use the stride(from:to:by:) function to skip the unwanted marks.

```swift

```

- Closed ranges are also available, by using stride(from:through:by:) instead:

```swift

let hours = 12 ;
let hourInterval = 3;

for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark);
}

```

### **While loops**

- performs a set of statements until a condition becomes false.

- Two kinds of while loops:

  - while evaluates its condition at the start of each pass through the loop.

  - repeat-while evaluates its condition at the end of each pass through the loop.

### While

- starts by evaluating a single condition.
- repeate until the condition becomes false.

- the general form of a while loop:

```swift
while condition {

    statements

}
```

```swift

var number = 1;
    while number <= 10 {
        number += 1;
        print("I loving coding swift.");
    }
print(" i am done ! i am not sure it is true or fale");


```

### Repeat While

- performs a single pass through the loop block first, before considering the loop’s condition.

- It then continues to repeat the loop until the condition is false.

#### **_the general form of a repeat-while loop:_**

```swift
repeat {
    statements
} while condition

```

---

### **Conditional Statements**

- to execute different pieces of code based on certain conditions.

- Two ways to add conditional branches to your code:

  - if statement and

  - the switch statement.

## If

- In its simplest form,
- the if statement has a single if condition.
- It executes a set of statements only if that condition is true.

```swift
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}
```

- The if statement can provide an alternative set of statements, known as an else clause.

- for situations when the if condition is false.

```swift

temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
```

- chain multiple if statements together to consider additional clauses.

```swift
temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
```

---

## Switch

- considers a value and compares it against several possible matching patterns.

- then executes an appropriate block of code, based on the first pattern that matches successfully.

- a switch statement compares a value against one or more values of the same type.

```swift
switch some value to consider {
case value 1:
    respond to value 1
case value 2,
     value 3:
    respond to value 2 or 3
default:
    otherwise, do something else
}
```

- consists of multiple possible cases, each of which begins with the case keyword.
- if no case matched there is default case to cover any values.

```swift
let someCharacter:Character = "z"

switch someCharacter {
case "a":
    print("the first letter of alphabet")
case "z":
    print("The Last Letter of alphabet.")
default:
    print("Other Character.")
}

```

- the entire switch statement finishes its execution as soon as the first matching switch case is completed, without requiring an explicit break statement.

### Compound case

- To make a switch with a single case that matches both "a" and "A".

- combine the two values into a compound case, separating the values with commas.

```swift

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) isn't a vowel or a consonant")
}


```

### Interval Matching

- Values in switch cases can be checked for their inclusion in an interval.

```swift

let approximateCount = 32;
let countedThings = "moons orbiting Saturn"
let naturalCount: String;

switch approximateCount {
    case 0:
        naturalCount="No";
    case 1..<5:
        naturalCount="a few"
    case 5..<12:
    naturalCount="several"
    case 12..<100:
        naturalCount = "dozens of"
    case 100..<1000:
        naturalCount = "hundreds of"
default:
    naturalCount = "Many"
}

```

---

### Tuples

- You can use tuples to test multiple values in the same switch statement.

- sEach element of the tuple can be tested against a different value or interval of values.

- use the underscore character (\_) ,_(the wildcard pattern)_,

- to match any possible value.

```swift

let somePoint=(1,1);
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

```

### Value Bindings

- A switch case can name the value or values it matches to temporary constants or variables.

- for use in the body of the case.

- known as _value binding_,

- because the values are bound to temporary constants or variables within the case’s body.

```swift
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
```

### Where

- A switch case can use a where clause to check for additional conditions.

```swift
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
```

## **Control Flow**

### [Table of Content](#table-of-content)

- [For loop](#for-loop)
- [For-In Loops](#for-in-loops)
- [While loops](#while-loops)
- [Accessing and Modifying a Dictionary](#accessing-and-modifying-a-dictionary)
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

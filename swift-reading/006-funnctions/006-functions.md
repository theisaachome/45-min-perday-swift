## Functions

### [Table of Contents](#table-of-contents)

- [What is Function](#what-is-function)
  - [Functions Without Parameters](#functions-without-parameters)
  - [Functions Without Parameters](#functions-without-parameters)
  - [Functions with Multiples Parameters](#functions-with-multiples-parameters)
  - [Functions Without Return Values](#functions-without-return-values)
  - [Functions with Multiple Return Values](#functions-with-multiple-return-values)
  - [Optional Tuple Return Types](#optional-tuple-return-types)
  - [Omitting Argument Labels](#omitting-argument-labels)
  - [Variadic Parameters](#variadic-parameters)
  - [In-Out Parameters](#in-out-parameters)

---

### What is Function

- self-contained chunks of code that perform a specific task.
- give a name that identifies what it does,
- the name is used to “call” the function when needed.

#### Defining and Calling Functions

- When you define a function:

- consisting of the function’s parameter types and return type.

- parameters:
  - define typed values that the function takes as input, known as parameters
- return type:
  - define a type of value that the function will pass back as output when it’s done, known as its return type.

```swift
func greet(person: String) -> {
    let greeting = "Hello "  + person + "!";
    return greeting;
}

print(greeti(person:"Anna"));

```

---

#### Functions Without Parameters

- a function with no input parameters, which always returns the same String message whenever it’s called:

```swift
 func sayHelloWorld()->{
      return "Hello, World";
 }

 print(sayHelloWorld());

```

#### Functions with Multiples Parameters

- Functions can have multiple input parameters.

```swift
“func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true));
```

#### Functions Without Return Values

- Functions aren’t required to define a return type.

```swift
func greet(person:String){
    print("Hello, \(person)! ");
}
```

- No need to return a value,
- No the return arrow (->) or a return type.

---

### Functions with Multiple Return Values

- a tuple type as the return type for a function.

- return multiple values as part of compound return value.

```swift

func minMax(array:[Int])->(min:Int,max:Int){
    var currentMin = array[0];
    var currentMax = array[0];

    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value;
        }else if value > currentMax {
            currentMax = value;
        }
    }
    return (currentMin,currentMax);
}
```

- to retrieve the mimimum and maximum found values:

```swift

let bounds = minMax(array: [8,-6,2,109,3,71]);
print("Min is \(bounds.min) and Max is \(bounds.max)");

```

---

### Optional Tuple Return Types

- returned from a function has the potential to have

- "No Values" for the entire tuple.

- optional tuple return type to reflect the fact that the entire tuple can be nil.

- placing a question mark after the tuple type’s closing parenthesis.

  ```swfit
  func minMax(array:[Int])->(min:Int,max:Int)?{}
  ```

---

### Functions With an Implicit Return

- function with a single expression :

  - the function implicitly returns that expression.

- both same result.

```swift
func greeting(for person:String) -> String {
     "Hello " + person + "!."
};
print(greeting(for: "Isaachome"));

func anotherGreeting(for person:String) -> String{
    return "Hello " + person + "!";
}
print(anotherGreeting(for: "Olivia"));

```

---

### Function Argument Labels and Parameter Names

- Each function parameter has both an argument label and a parameter name.

- The argument label is used when calling the function

- The parameter name is used in the implementation of the function.

- By default, parameters use their parameter name as their argument label.

#### example

```swift
    func someFunction(argumentLabel parameterName: Int) {}
    // example

func hello(person:String, from hometown:String) ->String{
    return " Hello \(person)! Glad you could visit from \(hometown)";
}
print(hello(person: "isaac", from: "Falam"));
```

---

### Omitting Argument Labels

- write an underscore (\_) instead of an explicit argument label for that parameter.

```swift
 func someFunction(_ parameterName: Int) {}
```

---

### Variadic Parameters

- To Accepts zero or more values of a specified type.
- The parameter can be passed a varying number of input values when the function is called.

- Write variadic parameters by inserting three period characters (...) after the parameter’s type name.

```swift

func arithmeticMean(_ numbers:Double...)-> Double{
    var total: Double = 0;
    for value in numbers {
        total += value;
    }
    return total;
}
let result = arithmeticMean(1,2,3,4,5,6);
print(result);
```

### In-Out Parameters

- Function parameters are constants by default.

- You can’t change the value of a parameter by mistake withinthe body of the function.

- To modify the parameter:

  - define that parameter as an in-out parameter instead.

- parameter has a value that’s passed in to the function, is modified by the function, and is passed back out of the function to replace the original value.

```swift
func swapTwoInts(_ a:inout Int, _ b:inout Int){
    let temporaryA = a;
    a = b;
    b = temporaryA;
}

var someInt = 3;
var anotherInt = 107;

swapTwoInts(&someInt, &anotherInt);
print("Someint is now \(someInt), and anotherInt is now \(anotherInt)");

```

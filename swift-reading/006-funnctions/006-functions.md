## Functions

### [Table of Contents](#table-of-contents)

- [What is Function](#what-is-function)

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

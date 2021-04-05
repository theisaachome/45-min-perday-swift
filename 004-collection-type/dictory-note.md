## **Dictionay**

### [Table of Content](#table-of-content)

- [Dictionary](#dictionary)
- [Creating an Empty Dictionary](#creating-an-empty-dictionary)
- [Creating a Dictionary with a Dictionary Literal](#creating-a-dictionary-with-a-dictionary-literal)
- [Accessing and Modifying a Dictionary](#accessing-and-modifying-a-dictionary)
- [Iterating Over a Dictionary](#iterating-over-a-dictionary)

### **Dictionary**

- A dictionary stores associations between keys and values of the same type in a collection
- No defined ordering.
- with a unique key, which acts as an identifier for that value within the dictionary.

### _Dictionary Type Shorthand Syntax_

```swift
Dictionary<key,Value>
```

### **Creating an Empty Dictionary**

- create an empty Dictionary of a certain type by using initializer syntax:

```swift

var players = [Int:String]();
players[1] = "Player One";

```

- create an empty dictionary with an empty dictionary literal.

```swift
var players = [:]
```

### **Creating a Dictionary with a Dictionary Literal**

- airports dictionary is declared as having a type of [String: String].

- keys are of type String,
- values are also of type String.

```swift

var airports : [String:String] = ["YGN":"Yangon International Airport","LIV":"Liverpool International Air Port"];

print(airports);

```

- Swift can infer

### **Accessing and Modifying a Dictionary**

```swift

print(airports.count);

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}

```

- add a new item to a dictionary with subscript syntax.

```swift

airports["LHR"] = " London"

```

- **updateValue(\_:forkey:) method**
  - retrieve a value from the dictionary for a particular key.
  - returns an optional value containing the existing value for that key.
  - returns nil:

```swift

if let oldValue =
airports.updateValue("Yangon Airport", forKey:"YGN") {
    print("The Old Value for  YGN was \(oldValue)");
}

```

- remove a key-value pair from a dictionary by assigning a value of nil for that key:

```swift

airports["APL"] = nil;

```

### **removeValue(forKey:) method**

- returns the removed value.
- returns nil if no value existed.

```swift

if let removedValue = airports.removeValue(forKey: "APL") {
    print("The removed airport's name is \(removedValue)");
}else{
    print("Can not found a value for APL")
}
```

### **Iterating Over a Dictionary**

- returned as a (key, value) tuple,
- you can decompose the tuple’s members into temporary constants or variables as part of the iteration:

```swift

for (code,name) in airports {
    print("\(code) : \(name)");
}

```

- retrieve an iterable collection of a dictionary’s keys or values by accessing its keys and values properties:

```swift

for code in airports.keys {
    print("Airport Code : \(code)");
}

for name in airports.values {
    print("Airport Name : \(name)")
}

```

- use a dictionary’s keys or values as an Array instance.

```swift

let airportsNames = [String](airports.values);
print(airportsNames);

```

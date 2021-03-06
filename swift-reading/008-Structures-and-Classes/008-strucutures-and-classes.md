## Structures and Classes

- [Structures and Classes](#Structures-and-Classes)
- [Table of Contents](#table-of-contents)
- [Comparing Structures and Classes](#Comparing-Structures-and-Classes)
- [Definition Syntax](#Definition-Syntax)
- [Instances](#instances)
- [Memberwise Initializers](#Memberwise-Initializers)
- [Strucutre and Enumerations Are Value Types](#Strucutre-and-Enumerations-Are-Value-Types)
- [Classes Are Reference Types](#Classes-Are-Reference-Types)
- [Identity Operators](#Identity-Operators)

### Structures and Classes

- the building blocks of your program’s code

- define properties and methods to add functionality to your structures and classes

- using the same syntax you use to define constants, variables, and functions.

### Comparing Structures and Classes

- Structures and classes in Swift have many things in common.
- Both can:

  - Define properties to store values

  - Define methods to provide functionality

  - Define subscripts to provide access to their values using subscript syntax

  - Define initializers to set up their initial state

  - Be extended to expand their functionality beyond a default implementation

  - Conform to protocols to provide standard functionality of a certain kind

---

- Classes have additional capabilities that structures don’t have:

  - Inheritance enables one class to inherit the characteristics of another.

  - Type casting enables you to check and interpret the type of a class instance at runtime.

  - Deinitializers enable an instance of a class to free up any resources it has assigned

  - Reference counting allows more than one reference to a class instance.

---

### Definition Syntax

- Both similar definition syntax.

- You introduce structures with the struct

- keyword and classes with the class keyword.

- Both place their entire definition within a pair of braces:

```swift
struct SomeStructure{}

class SomeClass {}
```

example

```swift

struct  Resolution{
    var width  = 0;
    var height = 0;
}

class VideoMode{
    var resolution = Resolution();
    var interlaced = false;
    var frameRate = 0.0;
    var name:String?
}

```

---

### Instances

- To create an insnntannce of the structure and class.

- both use initializer for new instances.

- simplest form the type name of class or structure.

```swift
let someResolution = Resolution();
let someVideoMode = VideoMode();
```

---

### Accessing Properties

- using dot syntax

```swift
print("The width of someResolution is \(someResolution.width)")
```

- drill down into subproperties
  - nested object properties

```swift
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
```

- to assign a new value to a variable property:

```swift
someVideoMode.resolution.width = 1280;
```

---

### Memberwise Initializers

- All Structures have auto generated

- memberwise initializer,
- to initialize the member properties of new structure instances.

```swift
let vga = Resolution(width: 640, height: 480);
```

- classs instances don't receive a default memberwise initializer.

---

### Strucutre and Enumerations Are Value Types

- Value type is a type whose value is copied.

- when it's assigned to a variable.

- when it's passed to a function.

- In Swift—integers : ,
  - floating-point
  - numbers,
  - Booleans,
  - strings,
  - arrays and dictionaries—are value types,
- and are implemented as structures behind the scenes.

- All structures and enumerations are value types in Swift.

- Any value types they have as properties—are always copied

- when they’re passed around in your code

```swift
let hd = Resolution(width: 1920, height: 1080);
var cinema = hd;
```

- Resolution is a structure, a copy of the existing instance is made,and

- this new copy is assigned to cinema.

- Even though hd and cinema now have the same width and height,

- they’re two completely different instances behind the scenes.

```swift
var cinema.width = 2048;
print("cinema is now \(cinema.width) pixels wide").
```

- the width property of the original hd instance still has the old value of 1920:

- The end result was two completely separate instances that contained the same numeric values.

![](structure.png)

---

```swift
enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
```

---

### Classes Are Reference Types

- reference types are not copied

- when they’re assigned to a variable or constant, or

- when they’re passed to a function.

- a reference to the same existing instance is used

```swift
let tenEighty = VideoMode();
tenEighty.resolution = hd;
tenEighty.interlaced = true;
tenEighty.name = "1080i";
tenEighty.frameRate = 25.0;
```

```swift
let alsoTenEighty = tenEighty;
alsoTenEighty.frameRate = 30;
```

- tenEighty and alsoTenEighty both refer to the same VideoMode instance.
- two different names for the same single instance,
- as shown in the figure below:

![](class.png)

- Note:
  - they are declared as constants, rather than variables.
  - can still change tenEighty.frameRate and alsoTenEighty.frameRate
  - the values of the tenEighty and alsoTenEighty constants themselves don’t actually change.
  - tenEighty and alsoTenEighty themselves don’t “store” the VideoMode instance—instead,
  - they both refer to a VideoMode instance behind the scenes.
    It’s the frameRate property of the VideoMode that’s changed,
  - not the values of the constant references to that VideoMode.

---

### Identity Operators

- classes are reference types,
- multiple constants and variables to refer to the same single instance of a class.
- find out whether two constants or variables refer to exactly the same instance of a class.

#### Two identity operators:

- Identical to (===)
- Not identical to (!==)

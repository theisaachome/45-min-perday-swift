## Properties

- [Table of Contents](#table-of-contents)
- [Properties](#Properties)
- [Stored properties](#Stored-properties)
- [Lazy Stored Properties](#Lazy-Stored-Properties)

---

### Properties

- Properties associate values with a particular class, structure, or enumeration.

- **Tow Properties :**

  - Stored properties and

  - Computed properties

- Stored properties:

  - store constant and variable values as part of an instance,

  - are provided only by classes and structures.

- Computed properties calculate (rather than store) a value.

  - provided by classes, structures, and enumerations.

- Properties can also be associated with the type itself.

  - Such properties are known as type properties.

---

### Stored properties

- A constant or variable
  - that’s stored as part of an instance of a particular class or structure.

```swift
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// the range represents integer values 0, 1, and 2

rangeOfThreeItems.firstValue = 6
// the range now represents integer values 6, 7, and 8
```

- FixedLengthRange have
  - a variable stored property firstValue and
  - a constant stored property length.
- When length is initialized
- can’t be changed thereafter, because it’s a constant property.

---

### Stored Properties of Constant Structure Instances

- create an instance of a structure and assign that instance to a constant,

```swift

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// this range represents integer values 0, 1, 2, and 3
rangeOfFourItems.firstValue = 6
// this will report an error, even though firstValue is a variable property
```

- rangeOfFourItems is declared as a constant

- can’t modify the instance’s properties,

- even if they were declared as variable properties:

- This behavior is due to **structures being value types.**
- When an instance of a value type is marked as a constant, so are all of its properties.

---

### Lazy Stored Properties

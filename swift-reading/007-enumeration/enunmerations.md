## Enumerations

[Table of Contents](#table-of-contents)

- [Enumerations](#enumerations)
- [Syntax](#Syntax)
- [Matching Enumeration](#matching-enumeration)
- [Iterating Over Enumeration Casess](#Iterating-Over-Enumeration-Casess)
- [Associated Values](#associated-Values)
- [Raw Values](#raw-values)

---

### Enumerations

- An enumeration defines a common type for a group of related values and

- enables you to work with those values in a type-safe way within your code.

- First-class types in their own right.

---

### Syntax

- With the enum keyword and place their entire definition within a pair of braces:

```js
enum SomeEnumeration {
    // enumeration definition goes here
}
```

Example

```swift
enum CompassPoint{
    case north
    case south
    case east
    case west
}
```

- enum cases don't have an integer value set by default.

- cases are values in their own right with an explicityly defined.

Multiple cases

```swift
enum Planet{
    case mercury, venus, earth, mars,jupiter, saturn, uranus, nepturn
}
```

- infere to one of the possible values after it is initialized.

```swift
var directionToHead = CompassPoint.east;

// after initialized with one of the CompassPoint.
// a shorter dot syntax:

directionToHead = .north;
```

---

### Matching Enumeration

- enumeration values with a switch statement:

```swift
directionToHead = .north;

switch directionToHead {
case .north:
    print("Lots of planets have a north");
case .south:
    print("Watch out for penguins");

case .east:
    print("Where the sun rises");
case .west:
    print("Watch out for penguins")
}

```

---

### Iterating Over Enumeration Casess

- it's useful to have a collection of all of that enumerations's cases.

- by writing **_: CaseIterable_** after the enumeration's name.

example

```swift
enum Beverage: CaseIterable{
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count;
print("\(numberOfChoices) beverages available.")

```

- a for loop to iterate over al the cases.

```swift
for beverage in Beverage.allCases{
    print(beverage);
}
```

---

### Associated Values

- To sttore values of other types alongside these case values

- You can define Swift enumerations to store associated values of any given type, and
- the value types can be different for each case of the enumeration if needed.

```swift
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
```

- Create new barcodes using either type:

```swift
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
```

- You can assign the same product a different type of barcode:

```swift
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
```

- within the switch case’s body:

```swift

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
// Prints "QR code: ABCDEFGHIJKLMNOP.
```

- you can place a single var or let annotation before the case name, for brevity:

```swift
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}
// Prints "QR code: ABCDEFGHIJKLMNOP.
```

---

### Raw Values

- values alongside named enumeration cases:

```swift

enum wokrout:String{
    case verticalPull = "HandStand"
    case horizontalPush = "Incline Push up"
}

```

---

### Implicitly Assigned Raw Values

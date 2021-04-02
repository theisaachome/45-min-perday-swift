## **[Array]**

### [Tabel of Contents](#tables-of-contents)

- [Creating an Empty Array](#creating-an-empty-array)
- [Merging tow Arrays](#merging-tow-arrays)
- [Accessing and Modifying an Array](#accessing-and-modifying-an-array)
- [Algorith for Arrays](#algorith-for-arrays)
- [Fliter](#filter)

### Arrays

- stores values of the same type
- values can appear in an array multiple times at different position.

### Creating an Empty Array

- emtpy array of a certain type.

```swift
 var someInts = [Int]();

 print("someInts is of type [Int] with
 \(someInts.count) items.");

 someInts.append(3);
```

---

### Creating an Array with a Default Value

```swift
 var threeDoubles = Array(repeating:0.0,count:3);
```

### Literal Array

- [ value1, value2, value3]

```swift
 var shoppingList: [String] = ["Eggs","Milk"];
```

- Writing [String] make the variables specified a value type of String.

### in shorter form instead:

```swift

var students = ["Maung Maung","Thida"];

```

---

### Merging tow Arrays

- using ( + ) operator.

```swift
// first array
 var threeDoubles = Array(repeating:0.0,count:3);

// second array
 var anotherDoubles = Array(repeating:2.5,count:3);

// combine the two array using + operator.
 var combineArray = threeDoubles + anotherDoubles;
```

---

### Accessing and Modifying an Array

- Access and modify an array through its methods and properties or by using subscript syntax.

- items number in arrays.

```swift


var students = ["Kyaw Kyaw","Aung Aung","Van Gyi","Pa rian"];

print(students.count);


```

- ### Add new item to the end of an array using append() method.

```swift

var students = ["Kyaw Kyaw","Aung Aung","Van Gyi","Pa rian"];

students.append("Van Ro Mang");

```

- ### Append an array of one or more with (+) operatos:

```swift

 students += ["Thaw Thaw"];
 students += ["isaac","Khant Zaw","Zin lin Htet"];

```

### Insert method

- inserts a new item with a value at the very
  beginningof the list,indicated by an index 0.

```swift

   students.innser("John Petrucci", at:0);

```

- ### Retrieve a value from the array.

```swift

 var firstStudent = students[0];

```

- ### update array in existing value.

```swift

 var  students[0] = "Kyaw Zin Wai";

```

- ### Change a range of values at once

```swift
students[0...3] = ["Moe Moe","Si Thu","Win Aung"];
```

### Remove method

- this method has return value and can be ignored if not a need.

```swift
let removedStudent = students.removed(at:1);
```

### Remove laste item from an Array

```swift
let lastStudent = students.removeLast();
```

### Iterating Over an Array

- iterate with the for-in-loop.

```swift
for student in students {
    print(student);
}
```

### enumerated() method

- to get integer index of each item as well as its value.

```swift

for (index,value) in students.enumerated() {
    print("Item \(index +1 ) : \(value)");
}

```

---

## Algorith for Arrays

### Sort Algorithm

- The closure takes two arguments (represented by $0 and $1).

- return a Boolean value that indicates whether the first element should be placed before the second element.

```swift


var numberArray = [9,3,6,2,8,5];

//arrayOne contains 2,3,5,6,8 and 9
numberArray.sort(){$0 < $1 }

// reverse the sort order
// 9,8,6,5,3 and 2
numberArray.sort(){$1 < $0 }

```

### Simplified version

```swift

var numberArray = [9,3,6,2,8,5];

//arrayOne contains 2,3,5,6,8 and 9
numberArray.sort(by: < )

// reverse the sort order
// 9,8,6,5,3 and 2
numberArray.sort(){$1 < $0 }

```

## Sorted Alogrithm

- **Sort algorithm** : sorts the array in place ( replaces the original array).
- **Sorted** : Creates a new array with the sorted elements from the original array.

```swift

var numberArray = [9,3,6,2,8,5];

let sorted = numberArray.sorted(){$0 < $1};

print(sorted);

```

- numberArray will contain the original unsroted array

---

## Fliter

- Return a new array by filtering the original array.

- To retrieve a subset of an array based on a set of rules.

- The closure takes one argument, and it should return a Boolean true if the element should be included in the new array,

```swift

let filtered = numberArray.filter{$0 > 3 && $0 < 7};

print(filtered);
//output [6, 5]

var cities = ["Boston","London","Chicago","Atlanta"];

let filteredCity = cities.filter{$0.range(of: "o") != nil};

print(filteredCity);


```

### Map

- map is used to apply logic to all elements in the array.

### Set

- A collection with no defined ordering.
- An item in Collection appears only once.

### Creating and Initializing an Empty Set

```swift

var favoriteGenres:Set<String> = ["Rock","Pop","Jazz","Classical"];
print(favoriteGenres);

```

- shorter form

```swift
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
```

### Accessing and Modifying a Set

- through its methods and properties.

- **Count property**

```swift

print("I have \(favoriteGenres.count) favorite music genres.")

```

- **isEmpty property**

```swift

if favoriteGenres.isEmpty {
    print("As far as music goes. I am not picky.");
}else{
    print("I have particular preferences.")
}

```

### insert(\_:)

- a new item into a set by calling the set’s insert(\_:) method:

```swift
favoriteGenres.insert("Metal");
```

### remove(\_:)

- remove an item from a set by calling the set’s remove(\_:) method

```swift

if let removeGener = favoriteGenres.remove("Pop"){

    print("\(removeGener)? I am over it.");

}else{

    print(" I dont' care what geners i love all.");

}

```

### contains(\_:)

- To check whether a set contains a particular item, use the contains(\_:) method.

```swift

if favoriteGenres.contains("Jazz") {
    print("Wow! Yeah! I love it")
}else{
    print("Sorry I don't like it");
}

```

### Iterating Over a Set

```swift


for geners in favoriteGenres {
    print(geners);
}

// sorted result

for geners in favoriteGenres.sorted() {
    print(geners);
}


```

### Performing Set Operations

- combining two sets together,
- determining which values two sets have in common
- determining whether two sets contain all, some,
- none of the same values.

### Example

```swift

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

```

### the intersection(\_:) method

- To create a new set with only the values common to both sets.

```swift
oddDigits.intersection(evenDigits).sorted()
// []
```

### the symmetricDifference(\_:) method

- To create a new set with values in either set, but not both.

```swift

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]
```

### the union(\_:) method

- To create a new set with all of the values in both sets.

```swift

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

```

### the subtracting(\_:) method

- To create a new set with values not in the specified set.

```swift

oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]

```

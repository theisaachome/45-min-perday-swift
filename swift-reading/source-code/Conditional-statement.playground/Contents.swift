import UIKit

let someChar:Character = "z"

switch someChar {
case "a":
    print("the first letter of alphabet")
case "z":
    print("The Last Letter of alphabet.")
default:
    print("Other Character.")
}


let otherCharacter : Character = "a";

switch otherCharacter {
case "a","A":
    print("The Letter A")
default:
    print("Not the letter A")
}


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
print(naturalCount);


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


let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}


let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


let someCharacter:Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) isn't a vowel or a consonant")
}

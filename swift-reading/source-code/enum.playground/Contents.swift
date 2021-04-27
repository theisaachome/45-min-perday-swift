import UIKit

var str = "Hello, playground"

enum CompassPoint{
    case north
    case south
    case east
    case west
}

enum Planet{
    case mercury, venus, earth, mars,jupiter, saturn, uranus, nepturn
}


var directionToHead = CompassPoint.east;

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


enum Beverage: CaseIterable{
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count;
print("\(numberOfChoices) beverages available.")



for beverage in Beverage.allCases{
    print(beverage);
}


enum wokrout:String{
    case verticalPull = "HandStand"
    case horizontalPush = "Incline Push up"
}

import UIKit

func arithmeticMean(_ numbers:Double...)-> Double{
    var total: Double = 0;
    for value in numbers {
        total += value;
    }
    return total;
}
let result = arithmeticMean(1,2,3,4,5,6);
print(result);


func minMax(array:[Int])->(min:Int,max:Int)?{
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
if let bounds = minMax(array: [8,-6,2,109,3,71]) {
    print("Min is \(bounds.min) and Max is \(bounds.max)");
};


func greeting(for person:String) -> String { "Hello " + person + "!."};
print(greeting(for: "Isaachome"));

func anotherGreeting(for person:String) -> String{ return "Hello " + person + "!"; }
print(anotherGreeting(for: "Olivia"));


func hello(person:String, from hometown:String) ->String{
    return " Hello \(person)! Glad you could visit from \(hometown)";
}

print(hello(person: "isaac", from: "Falam"));



func swapTwoInts(_ a:inout Int, _ b:inout Int){
    let temporaryA = a;
    a = b;
    b = temporaryA;
}

var someInt = 3;
var anotherInt = 107;

swapTwoInts(&someInt, &anotherInt);
print("Someint is now \(someInt), and anotherInt is now \(anotherInt)");

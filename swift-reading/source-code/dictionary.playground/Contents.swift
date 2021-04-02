import UIKit


var players = [Int:String]();
players[1] = "Player One";

var airports : [String:String] = ["YGN":"Yangon International Airport","LIV":"Liverpool International Air Port"];
print(airports);


airports["LHR"] = " London"
print(airports.count);


if let oldValue = airports.updateValue("Yangon Airport", forKey: "YGN") {
    print("The Old Value for  YGN was \(oldValue)");
}

print(airports);


if let airportName = airports["YGN"] {
    print("The name of the airport is \(airportName)");
}else{
    print("That airport is not in the airport dictionary");
}


airports["APL"] = "Apple International";

print(airports);

//airports["APL"] = nil;

if let removedValue = airports.removeValue(forKey: "APL") {
    print("The removed airport's name is \(removedValue)");
}else{
    print("Can not found a value for APL")
}

print(airports);


// retrive
for (code,name) in airports {
    print("\(code) : \(name)");
}

for code in airports.keys {
    print("Airport Code : \(code)");
}

for name in airports.values {
    print("Airport Name : \(name)")
}

let airportsCode = [String](airports.keys);
print(airportsCode);
let airportsNames = [String](airports.values);
print(airportsNames);

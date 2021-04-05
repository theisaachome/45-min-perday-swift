import UIKit

let names  = ["John Petrucci","John Mayer","John Cena","John Wick","John Mac"];

for name in names {
    print(name);
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}


for index in 1...5 {
    print(index);
}


let base = 3;
let power = 10;

var answer = 1 ;

for _ in 1...power {
    answer *= base;
}
print("\(base) to the power of \(power) is \(answer)");


let minutes = 60;

for tickMark in 0..<minutes {
    print(tickMark);
}

let minuteInterval = 5;
for tickMark  in stride(from: 0, to: minutes, by: minuteInterval) {
    print("Every \(tickMark) mintues it shows");
}


let hours = 12 ;
let hourInterval = 3;

for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark);
}

var number = 1;
while number <= 10 {
    number += 1;
    print("I loving coding swift.");
}
print(" i am done ! i am not sure it is true or fale");

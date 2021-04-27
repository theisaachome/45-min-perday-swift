import UIKit

func makeIncrementer(forIncrement amount:Int) -> () -> Int {
    var runninngTotal = 0;
    func incrementer() -> Int{
        runninngTotal += amount;
        return runninngTotal;
    }
    return incrementer;
}

let incrementByTen = makeIncrementer(forIncrement: 10);
incrementByTen();
incrementByTen();
incrementByTen();

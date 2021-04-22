import UIKit

var str = "Hello, playground"

func stepForward(_ input:Int)->Int{
    return input + 1;
}
func stepBackward(_ input:Int)->Int{
    return input + 1;
}

func chooseStepFunction(backward:Bool)->(Int) -> Int{
    return backward ? stepBackward : stepForward;
}

var currentValue = 3;
let moveNearToZero = chooseStepFunction(backward: currentValue > 0);

print("Counting to zero:")
while currentValue != 10 {
    print("\(currentValue)...")
    currentValue = moveNearToZero(currentValue);
}

import UIKit
let names = ["Chris","Alex","Ewa","Barry","Daniella"];
func backward(_ s1:String,_ s2:String)-> Bool{
    return s1 > s2 ;
}
var reversedNames = names.sorted(by: backward(_:_:));
print(reversedNames);


reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )

reversedNames = names.sorted(by: {$0>$1});
print(reversedNames);

var operatorMethods = names.sorted(by: >);
print(operatorMethods);

var trailingClosure = names.sorted(){$0>$1};
print(trailingClosure);



let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]


let strings = numbers.map{
    (number)-> String in
    var number = number;
    var output = "";
    
    repeat{
        output = digitNames[number % 10]! + output
        number /= 10
        
    }while number>0
        return output;
    
}

print(strings);

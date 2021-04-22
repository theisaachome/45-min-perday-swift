import UIKit
let names = ["Chris","Alex","Ewa","Barry","Daniella"];
func backward(_ s1:String,_ s2:String)-> Bool{
    return s1 > s2 ;
}
var reversedNames = names.sorted(by: backward(_:_:));
print(reversedNames);


reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )

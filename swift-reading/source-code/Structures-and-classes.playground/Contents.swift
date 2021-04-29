import UIKit

var str = "Hello, playground"

struct SomeStructure{}

class SomeClass {}


struct  Resolution{
    var width  = 0;
    var height = 0;
}

class VideoMode{
    var resolution = Resolution();
    var interlaced = false;
    var frameRate = 0.0;
    var name:String?
}

let someResolution = Resolution();
let someVideoMode = VideoMode();

someVideoMode.resolution.width = 1280;

print("The width of someResolution is \(someResolution.width)")

print("The width of someVideoMode is \(someVideoMode.resolution.width)")


let vga = Resolution(width: 640, height: 480);

let hd = Resolution(width: 1920, height: 1080);
var cinema = hd;


let tenEighty = VideoMode();
tenEighty.resolution = hd;
tenEighty.interlaced = true;
tenEighty.name = "1080i";
tenEighty.frameRate = 25.0;


let alsoTenEighty = tenEighty;
alsoTenEighty.frameRate = 30;

print("The FrameRate property of tenEntity is now \(alsoTenEighty.frameRate)")


if alsoTenEighty === tenEighty {
    print("tenEntity and alsoTenEighty refer to the same VideoMode")
}

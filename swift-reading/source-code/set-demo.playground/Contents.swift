import UIKit

var favoriteGenres:Set<String> = ["Rock","Pop","Jazz","Classical"];
favoriteGenres.insert("Metal");
print("I have \(favoriteGenres.count) favorite music genres.")

if let removeGener = favoriteGenres.remove("Pop"){
    print("\(removeGener)? I am over it.")
}else{
    print(" I dont' care what geners i love all.");
}

if favoriteGenres.contains("Jazz") {
    print("Wow! Yeah! I love it")
}else{
    print("Sorry I don't like it");
}

if favoriteGenres.isEmpty {
    print("As far as music goes. I am not picky.");
}else{
    print("I have particular preferences.")
}


for geners in favoriteGenres {
    print(geners);
}
print("---------")

for geners in favoriteGenres.sorted() {
    print(geners);
}


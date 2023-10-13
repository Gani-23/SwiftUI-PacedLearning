import Foundation

struct Animal {
    let type : String
    init(type: String) {
        if(type == "Rabbit" || type == "Kong" || type == "Dog" ){
            self.type = type
        }else{
            preconditionFailure()
        }
    }
}
Animal(type: "Rabbit")


//enums

enum planets {
    case mercury, venus, earth, mars , jupiter
    case saturn, uranus, neptune
}

var Living = planets.earth
var farthest = planets.mars

// identifies it's own enum

Living = .saturn

if Living == .earth {
    print("Good")
}else{
    print("Bad Bad")
}

// switch case guessing there's no breaking needed in here tho..

switch Living{
case .earth:
    print("you liveon earth")
case .mercury:
    print("you liveon mercury")

case .venus:
    print("you liveon venud")

case .mars:
    print("you liveon mars")

case .jupiter:
    print("you liveon jupiter")

case .saturn:
    print("you liveon saturn")

case .uranus:
    print("you liveon uranus")

case .neptune:
    print("you liveon neptune")

}


// enums with definite or let type call it fix type syntax we need to use cases to store values

enum Device: String {
    case actor = "Tom cruise"
//    case number = 123 this would bring you error
    case cinemas = "TopGun, Maveric, Misson Impossible and shit"
    
}
// use rawvalues to retrieve from enums with specific types
print(Device.actor.rawValue + " have done these movies " + Device.cinemas.rawValue)

// int enums

enum counter : Int {
    case Mercury = 1
    case Venus = 2
    case earth = 3
    case Mars = 4
}
print("Count number is \(counter.Mercury.rawValue)")

// enum takes functions

enum Comicon {
    case book (String, Int)
    case area (String)
}
var marvel = Comicon.book("Spiderman", 10)
Comicon.area("HSR Layout")

switch marvel {
case .book(let avenger, let pages):
    print("\(avenger), \(pages)")
case .area(let area):
    print("\(area)")
}


// enum comparable

enum Grades : Comparable{
    
    case a
    case b
    case c
    case d
    case e
    case f
}
let accptableGrade = Grades.c
let CurrentGrade = Grades.c

if CurrentGrade > accptableGrade {
    print("Unacceptable")
}
else {
        print("acceptable")
    }

let x = 1
var y = "Hello"
// a = b

for i in 1...3{
    print("\(i)")
}
var j = 22
var k = 12

let v = (j < k ? j + k : j - k)

var message : String? = "Halloween"
var loading : Optional<String> = "Malloc"
message = nil
loading = nil

enum Optinal <T> {
    case None
    case Some(T)
}

enum heros : String {
    case Cap = "Row"
    case America = "Challenger"
    case Joker = "Kids"
    case Twinkies = "kiks"
}
heros.America.rawValue
heros.Cap

enum Indexer : Int{
    case Cap = 1
    case America = 2
    case Joker = 3
    case Twinkies = 4
}
Indexer.America.rawValue

let camt = heros.America

switch camt{
case .America:
    "I am captian america"
case .Cap:
    "Cal"
case .Joker:
    "Jomler"
case .Twinkies:
    "Twonkies"
}


enum Animals {
    case Dog
    case Rabbot
    case Jocker
    case Mammal
    case HedgeHog
    
}
func DescribeAnimals(_ animals : Animals){
    switch animals{
    case .Dog :
        "Dog"
    case .Rabbot:
        "rAt"
    case .Jocker:
        "Jog"
    case .Mammal:
        "Mamas"
    default:
        "None"
    }
}
DescribeAnimals(Animals.HedgeHog)



enum Shorcut{
    case fileOrFolder(path: URL, name : String)
    case wwwUrl(Path: URL)
    case song(artist: String, SongName: String)
}

let wwwApple = Shorcut.wwwUrl(Path: URL(string : "https://www.google.com")!)


switch wwwApple {
case .fileOrFolder(let path, let name):
    path
    name
    break
case .wwwUrl(let Path):
    Path
    break
case .song(let artist, let SongName):
    artist
    SongName
    break
}

switch wwwApple {
case let .fileOrFolder(path, name):
    path
    name
    break
case let .wwwUrl( Path):
    Path
    break
case let .song(artist,SongName):
    artist
    SongName
    break
}

let withoutyou = Shorcut.song(artist: "Gani", SongName: "Adiye")

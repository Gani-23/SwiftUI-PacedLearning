import Foundation

var Greetings = "Hello, There";
let firstName = "Saiganesh"

// let can't mutatable
// collectuibs

var names = [Greetings, firstName];

print(names)

names = ["add","sub"]
names.append("Lol")
names.append("mul")
print(_ : names)
names

// array concatenation

let newArray = [10,20,30]

var stringOne = "Iam, an, idiot"
stringOne.replacingOccurrences(of: "an", with: "not")
stringOne.count
stringOne.replacingOccurrences(of: ",", with: "")

var path = "/one/two/three/four"

let startIndex = path.index(path.startIndex, offsetBy: 5)
path.last
var lola = path.split(separator: "/")
print(_ : lola)

// text book initiation of tuples

let  team = ("names", "Matches", "won", "lose")

// smart init

let whiners = (name: "saiganesh", phone : "9182345999", mail: "saiganesh7989@gmail.com")

whiners.self
whiners.name
whiners.phone
whiners.mail


 


var Array : [String] = ["Goat", "Sheep","Dang"]
var IntArray : [Int] = [1,2,10,3,20,4,5,6]
IntArray.count - 1
var multiArrayOne = [1,2]
var multiArray = [2,3]


multiArray[1] * multiArray[0]

IntArray.insert(10, at: 2)
print(_ : IntArray)
IntArray.remove(at: 2)

print(_ : IntArray)
print(IntArray[3...5])
print(IntArray[..<3])
print(IntArray[3...])

var numbers = [1,22,32,4,55,63,7,8,89,10,2]

print(numbers.sort(){$0 > $1})

print(_ : numbers)

print(numbers.sorted(){$1 > $0})


// prints the number greater than 20

print(numbers.filter{$0>20})

// prints the number less than 20

print(numbers.filter{$0<20})

// prints the number multiply by 2

print(numbers.filter{$0 % 2 == 0})

// prints the number odd

print(numbers.filter{$0 % 3 == 1})


// Mutable let

let Oldways = NSMutableArray(
array: ["Gank"])

Oldways.add("add")

var newArrays = Oldways
newArrays.add("Qux")

//Oldways
print(_ : Oldways)
//newArrays
print(_ : newArrays)

func ChangingTheArray(_ array: NSArray){
    let copy = NSMutableArray(array: array)
    copy.add("Baz")
}

print(ChangingTheArray(Oldways))






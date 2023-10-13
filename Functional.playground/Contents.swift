import Foundation

let myage = 22
let yourage = 20

if(myage > yourage){
    print("i am older than you")
}else{
    print("younger than you")
}

//  new way

var compliment = myage < yourage ? "i am young" : "i am old"

print(compliment)
print(type(of: compliment))

// starting functions from here

func noArguements (){
    "Idiota"
}
noArguements()

func Adder(value : Int) {
    let newvalue = value + 2
}


Adder(value: 1)

func Tower(value : Int) -> Int {
    value + 2
}

Tower(value: 29)


func ArrayManipulation (
    value1 : String,
    value2 : String) -> Any {
        
        var Jared =  NSMutableArray(array: ["DayDream"])
        Jared.add("Jioked")
        Jared.add("Monet")
        Jared.add(value1)
        Jared.add(value2)
        return Jared
        
    }

print(ArrayManipulation(value1: "sau", value2: "Gain"))

func Arthematic(value1: Int,
                value2:Int) -> Int {
    return value1 + value2
}
Arthematic(value1: 10, value2: 20)


// nested functions in swift

func addition(value : Int) -> Int{
    
    func adders(value : Int) -> Int{
        value + 1
    }
    return adders(value: value + 2)
}

addition(value: 10)
let student = (names : "Gani" , work : "software developer")

func putSomeSense() -> Int{
    "hola, soy dora.. tu eres \(student.names) and i work as \(student.work)"
    "your favorite number is \(addition(value: 8))"
    func Adder(value1 : Int) -> Int {
        "tu habla español ?? "
        return value1 + 1
    }
    return Adder(value1: 10)
}
putSomeSense()

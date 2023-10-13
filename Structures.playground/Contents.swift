import Foundation

struct Student {
    let name : String
    let ID : Int
    let Address: String
}
var joker = Student(name: "Ganesh", ID: 1, Address: "Fort, Rayadurg")

joker.Address


struct Employee {
    let name : String
    let ID : Int
    let Address : String
    init(name: String, ID: Int) {
        self.name = name
        self.ID = ID
        self.Address = "Siri nilayam"
    }
}
let UPS = Employee(name: "Ganesh", ID: 1)

UPS.name
UPS.Address
UPS.ID


struct Employer {
    let name : String
    let Acknowledgment : String
    let Address : String
    let Owner : String
    init(name: String, Acknowledgment: String) {
        self.name = name
        self.Acknowledgment = Acknowledgment
        self.Address = "Banglore"
        self.Owner = "\(Address) : \(name) : Adder ";
    }
}

let Channasandra = Employer(name: "Synchronoss", Acknowledgment: "SKKAKSD" )
Channasandra.Owner
Channasandra.name


 
struct car {
    var currentSpeed : Int
    mutating func drive(SpeedLimit: Int ){
        "Session Started ..."
        currentSpeed = SpeedLimit
    }
}

// use var to make values mutable
let immutableCar = car(currentSpeed: 10)
//immutableCar.drive(SpeedLimit: 20)

var mutableCar = car(currentSpeed: 10)
let copy = mutableCar
mutableCar.currentSpeed
mutableCar.drive(SpeedLimit: 30)
mutableCar.currentSpeed
copy.currentSpeed

// struct cannot inherit from other structure in string

// custom copy

struct Bike {
    let name : String
    let year : Int
}


let Biker = Bike(name: "HD", year: 2023)
//Biker.year = 2020 doesn't work because of let constant that is why we do something like this

struct Vehicles {
    let name : String
    let year : Int
    func Setter(vehicleName : String) -> Vehicles {
        Vehicles(name: vehicleName, year: self.year)}
    
}
let Vehicle = Vehicles(name: "HD", year: 2023)

Vehicle.Setter(vehicleName: "Re")


// Example

struct Animal{
    let name : String
    let year : Int
    let starrimg : String
    func Setter(AnimalName: String , Byear : Int ) -> Animal{
        Animal(name: AnimalName, year: Byear , starrimg: self.starrimg)
    }
}

let Lion = Animal(name: "furryCat", year: 2023, starrimg: "Hanma")

//Lion.name = " Joker" cannot set directly use Setters

let kiong = Lion.Setter(AnimalName: "Kong", Byear: 1998)

print(Lion)
print(kiong)

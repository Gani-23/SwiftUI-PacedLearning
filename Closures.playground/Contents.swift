import Foundation

//revision of clousers // functions into variable expression closures//

let Add : (Int, Int )-> Int = {
    (value : Int, value1: Int) -> Int in value + value1
}
Add(1,2)


let Mul : ( Int, Int) -> Int = {
    (value: Int, value1: Int) -> Int in value * value1
}

func Muller(
    _ lhs: Int,
    _ rhs: Int,
    using function : (Int, Int)-> Int)-> Int{
        function(lhs, rhs)
    
}
Muller(10, 3, using: Mul)

// sub

let subs : (Int, Int) -> Int = {
    (val : Int, val1 : Int) -> Int in val - val1
}

subs(1,2)

func subber ( _ val : Int,
_ val1 : Int ,
              using function : (Int, Int) -> Int) -> Int{
    function(val, val1)
}

subber(10, 2, using: subs)

subber(2,10){
    (lhs,rhs) in lhs + rhs
}
subber(10,10){
    $0 + $1
}

let ages = [1,2,3,4,5,6]

ages.sorted(by: { (lhs: Int, rhs: Int) -> Bool in lhs < rhs })

let fuckups = ["Yogeesha", "Sushma", "Tamas"]

fuckups.sorted(by:{ (lsh: String, Rhs: String)-> Bool in lsh < Rhs })

fuckups.sorted(by: <)
print(_ : fuckups)
print(fuckups.sorted(by: <))

// using // // in //

// functions to functions closures

func addes(_ value : Int) -> Int{
    value + 10
}

func nestedfunc(on value: Int,
                using function :(Int) -> Int)-> Int{
    function(value)
}
nestedfunc(on: 10, using: addes)
nestedfunc (on: 10, using: addes(_:))

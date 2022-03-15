import UIKit

func aFunction()-> () {
    print("i'am a function ")
}
var aClousure: () ->() = {
    print("i'am a closure")
}
var newVar: () = aClousure()
aFunction()
aClousure()

var aClousureWithInput: (Int) -> () = {
    anInteger in
    print(anInteger)
}
aClousureWithInput(3)

var aClosureWithMultipleInputs: (Int, String) -> () = {
    (anInteger,anString) in
    print(anInteger,anString)
}

aClosureWithMultipleInputs(2,"hola")

var aClousureWithReturn: () -> (Int) = {
    return 3
}

print(aClousureWithReturn())

var aClousureWithTupleReturn: () -> (first:Int,last:Int) = {
    return (1,2)
}

var aTuple : (first:Int,last:Int) = aClousureWithTupleReturn()
print(aTuple.first)
print(aTuple.last)
//print(aClousureWithTupleReturn())



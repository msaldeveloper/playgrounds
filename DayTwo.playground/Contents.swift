import UIKit
// Arrays

let jonh = "Jonh Lennon"
let paul = "Paul McCartney"
let george = "Gearge Harrison"
let ringo = "Ringo Starr"

let beatles: [String] = [jonh,paul,george,ringo]
print(beatles)
//Sets
let colors = Set(["red","green","blue"])
print(colors)
let colors2 = Set(["red", "green", "blue", "red", "blue","red"])// no se aceptan valores repetidos se pueden escribir pero no los va a tomar en cuenta
print(colors2)
//Tuples

var name = (first: "Mario", last: "Saldaña",newLast: "otro0")// despues de definidas no se puede hacer mas grande o eliminar valores dentro de la tupla
name.0//se puede acceder al valor  ya sea por posicion o por llave
name.1
name.first
name.newLast
name.last

//Dictionaries
//son muy parecidos a los arreglos pero estos cuentan con llave y valor [llave: "valor"]
let heights = [
    "Mario": 1.82,
    "Pedro": 1.68,
    "Damian":1.68,
    "Jesuit": 1.76,
    "Fer": 1.85
]
heights["Mario"]
heights["Fer"]

//Dictionaries Default Values
//si no se encuentra un valor en nuestro Diccionario nos regresara un nil pero podemos hacer que esa respuesta sea un valor numerico definiendo el default
heights["Adrian"]//esto nos regresa un nil
heights["Adrian", default: 0.0]//regresa 0

//creating empty collections

//creating empty dictionary
var teams = [String: String]()//empty dictionary
var teams2 : [String: String] = [:]//empty dictionary too

teams["Mario"] = "Red"// añadiendo llave "Mario" y el valor "Red" a teams
teams["Mario"]
print(teams)
//creating empty array
var result = [Int]()//empty array
var result2 : [Int] = []//empty array too
//creating empty set
var words = Set<String>()
var numbers = Set<Int>()


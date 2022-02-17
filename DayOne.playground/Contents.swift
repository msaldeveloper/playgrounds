import UIKit
//var variable que se puede modificar tantas veces como se quiera
//let variable que no se puede modificar
var greeting = "Hello, playground"
greeting = "goodbye"

let saludo = "hola"
//saludo no se puede volver a utilizar ya que es una variable de tipo let la cual no se puede modificar

//-saludo = "adios"

//Swift es lo que se conoce como un lenguaje de tipo seguro, lo que significa que cada variable debe ser de un tipo específico.

var age = 26
//swift permite usar guines bajos como separadores de miles, no cambian el numero pero facilitan su lectura ejemplo:
var population = 8_000_000
//population = "hola" //no se puede asignar un string a una variable a la que previamente se la ha asignado un Int o viceversa o con cualquier tipo de dato, ya que swift es un lenguaje type-safe

//multilineStrings

var strMultiLine = """
this goes
over
multiple
lines
"""//las comillas se tienen que poner al abrir una linea arriba antes de empezar nuestra cadena y una linea abajo despues de concluir nuestra cadena

var strMultiLine2 = """
this goes \
over \
multiple \
lines
"""// multiple linea al declarar pero al imprimir solo se hace una linea
print(strMultiLine)
print(strMultiLine2)

//Booleans and doubles

var pi = 3.1416// este es un valor double, swift toma por defecto cualquier valor con punto decimal que no esta siendo declarado como un flotante como un double

var awesome = true
awesome = false

//String Interpolation

var score = 85
var results = "The score was \(score)"

//constants never changed

let msalda = "swift"
print(msalda)

//type annotation

let album: String = "Reputation"
let year: Int = 1995
let height: Float = 1.78
let msaldaRocks: Bool = true

//symple types

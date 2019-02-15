import UIKit

var str = "Hello, playground"

//Declarar una variable y constante explicita para cada uno de los siguientes tipos de datos Int, Float, Double, String

//VARIABLES IMPLICITAS
var entero = 20
var flotante = 14.5
var doble = 60.7
var cadena = "hello world"
var boleana = false

//VARIABLES EXPLICITAS
var entero2 : Int = 20
var flotante2 : Double = 14.5
var doble2 : Float = 60.7
var cadena2 : String = "hello world"
var boleana2 : Bool = true

//CONSTANTES IMPLICITAS
let entero3 = 20
let flotante3 = 14.5
let doble3 = 60.7
let textoString3 = "hello world"
let boleana3 = false

//CONSTANTES EXPLICITAS
let entero4 : Int = 20
let flotante4 : Double = 14.5
let doble4 : Float = 60.7
let cadena4 : String = "hello world"
let boleana4 : Bool = true

//Cual es la diferencia entre flotante y doble
//la cantidad de almacenar valores, double le cabe mas

//Interpolar la siguiente cadena cuyo resultado debe ser: el valor de la variable es 3 y el valor de la constante es 100
var variable = 3
let constante = 100

print("El valor de la variable es \(variable) y el valor de la constante es \(constante)")


//Imprimir una lista que se muestre de la siguiente manera
/*
 Lista:
 1    🍎
 2    🤡
 3    ✋🏻
 4   😀
 
 */

print(" 1 🍎 \n 2 🤡 \n 3 ✋🏻 \n 4 😀")

//Para qué sirve en la cadenas los siguientes simbolos \n \t, haga un ejemplo
/*
 \n da un salto de linea
 \t da un tab
 */

// Haga una concatenación de cadenas y una interpolación con las siguientes variables
var profesion = "Ingeniero "
var nombre = "Jorge "
var apellido = "Romo "

var concatenacion = profesion + nombre + apellido
var interpolacion = "\(profesion) \(nombre) \(apellido)"

print(concatenacion)
print(interpolacion)

//Determinar si la variable numero es par mediante una estructura de contro IF
var numero = 2

if(numero % 2 == 0)
{
    print("PAR")
}
else
{
    print("NO ES PAR")
}

//Calcular el área de un cirulo con los siguientes valores
var diametro = 4
let pi = 3.1416

var area = pi * Double(diametro/2) * Double(diametro/2)

print("El area del circulo es \(area)")


// Arrays
var todo: [String] = ["Return Calls","Write Blogpost","Cook Dinner"]

//Agregar al arreglo los siguientes 2 valores 'Pickup Laundry' y 'Buy Bulbs'
todo.append("Pickup Laundry")
todo.append("Buy Bulbs")
print(todo)

//Mostrar el primer elemento de un arreglo
print(todo[0])

//Mostrar cuantos elementos tiene el arreglo
print("El arreglo es de tamano \(todo.count)")

//Eliminar el ultimo elemento del arreglo y hacer un count para ver que se haya eliminado
todo.removeLast()
print(todo)

//Eliminar el elemento del arreglo con indice 3
todo.remove(at:3)
print(todo)

//Imprimir todos los elementos del arreglo frutas utilizando un for in
var frutas = ["Manzana", "Piña", "Naranja", "Pera"]

for fruta in frutas {
    print(fruta)
}

//Utilice un ciclo while para imprimir los numeros del 1 al 10
var num = 1
while num <= 10 {
    print(num)
    num = num + 1
}

//Utilice un ciclo repeat-while para imprimir los numeros del 1 al 10
num = 1
repeat {
    print(num)
    num = num + 1
} while num <= 10


//Haga uso de la estructura de control switch para determinar si la constante letra es una constante, una vocal o no es ninguna de las anteriores
let letra =  "e"

switch letra {
case "a":
    print("vocal")
case "e":
    print("vocal")
case "i":
    print("vocal")
case "o":
    print("vocal")
case "u":
    print("vocal")
default:
    print("No es vocal")
}

// Utilice una condicion que evalue si el estudiante de la clase aprobo el primer parcial, teniendo en cuenta que para aprobar es necesario entregar las practicas y ademas tener una calificacion en el examen mayor e igual a 7 (imprimir si el estudiante aprueba o no el primer parcial)
var calificacionExamen = 7
var entregoPracticas = false

if(calificacionExamen >= 7 && entregoPracticas) {
    print("Aprovo")
}
else{
    print("No aprovo")
}

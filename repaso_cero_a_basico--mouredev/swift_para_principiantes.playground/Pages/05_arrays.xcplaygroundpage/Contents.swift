import Foundation

let name = "Pierre"
let surname = "Juarez"
let company = "FITCO"
let age = "21"

/** Creación de un array */


//let myArray = Array<String>() <== Modo clásico
var myModernArray = [String]() /** <=== Modo moderno  */
var myModernArray2: [String] = [] /** Alternativa al modo moderno */

/** Inferencia de Array de tipo STRING */
let myStringArray = ["Hola","este es","un array"]
print(myStringArray)

/** Añadimos elementos de 1 en 1 */
myModernArray.append(name)
myModernArray.append(surname)
myModernArray.append(company)
myModernArray.append(age)

print(myModernArray)

/** Añadimos un conjunto de datos */
myModernArray.append(contentsOf: ["Nuevo valor","Otro valor", "Más valores"])
myModernArray += ["Otro valorcito","Ohhh"]

print(myModernArray)


/** Acceso a datos */
print(myModernArray[2])

/** Modificación de datos */
myModernArray[5] = "Valor modificado"


/** Eliminar datos de un array */
myModernArray.remove(at:3)
print(myModernArray)

/** Recorrer datos */
for value in myModernArray {
  print(value)
}

/** Otras operaciones con Arrays */
print("Mi array tiene \(myModernArray.count) elementos")

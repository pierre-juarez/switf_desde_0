import Foundation

/** Sintaxis */
let myOldDictionary = Dictionary<String, Int>() //Clásica
var myNewDictionary = [String:Int]() //Actual

/** Añadiendo valores */

myNewDictionary = ["Pierre":002, "Juarez":001,"Other":007]
print(myNewDictionary)

/** Añadir un nuevo dato */
myNewDictionary["Ohh"] = 003
myNewDictionary["Othercito"] = 010
print(myNewDictionary)

/** Acceso a un dato */
print(myNewDictionary["Pierre"])
print(myNewDictionary["Jean"])

/** Actualizar un dato */
myNewDictionary["Pierre"] = 123
myNewDictionary.updateValue(531, forKey: "Other")
print(myNewDictionary)

/** Eliminar un dato */
myNewDictionary["Ohh"] = nil
myNewDictionary.removeValue(forKey: "Juarez")
print(myNewDictionary)

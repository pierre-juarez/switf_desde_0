import Foundation

let myString = "12345"
let myInt = Int(myString)
print(myInt)

if myInt != nil {
  /** Desempaquetar un opcional */
  print(myInt! + 10)
}

/** Definición de opcionales */
var myNewString: String?
print(myNewString)

myNewString = "Text new"

if myNewString != nil{
  print(myNewString!)
}

/** Enlace opcional */

if let myNoNilString = myNewString{
  print(myNoNilString)
}

import Foundation

/** SWITCH con strings */

let country = "Perú"

switch country {
case "España", "México", "Perú", "Colombia", "Argentina":
  print("El idioma es español")
case "EE.UU":
  print("El idioma es inglés")
case "Francia":
  print("El idioma es francés")
default:
  print("Idioma no encontrado")
}

/** SWITCH con numbers */
let age = 200

switch age{
case 1,2,3:
    print("Eres un bebé")
case 3...10:
  print("Eres un niño")
case 11..<18:
  print("Eres un adolescente")
case 18..<70:
  print("Eres un adulto")
case 70..<100:
  print("Eres un anciano")
default:
  print("😲")
}

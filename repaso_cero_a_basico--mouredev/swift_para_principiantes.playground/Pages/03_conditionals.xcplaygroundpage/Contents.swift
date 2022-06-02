//: [Previous](@previous)

import Foundation

let myNumber = 48

/*
 OPERADORES CONDICIONALES
 == (= =) igualdad
 > mayor que
 < menor que
 >= (> =) mayor o igual que
 <= (< =) menor o igual que
 != (! =) desigualdad
*/

if(myNumber > 5 && myNumber < 10) || myNumber >= 50{
  //Setencia IF
  print(" \(myNumber) es mayor que 5 y menor que 10 o es mayor o igual que 50")
}else if(myNumber == 1){
  //Sentencia ELSE IF
  print(" \(myNumber) es igual a 1")
}else {
  //Sentencia ELSE
  print("Lo siento pero no podemos evaluar este número \(myNumber)")
}

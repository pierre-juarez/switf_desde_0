import Foundation

let myStringArray = ["Hola","este es","un array","nuevo"]
let myNewDictionary = ["Pierre":002, "Juarez":001,"Other":007]

/**FOR **/
for valor in myStringArray {
  print(valor)
}

for elem in myNewDictionary{
  print(elem)
}

for i in 1...5{
  print(i)
}

myStringArray.forEach{(stringElement) in
  print(stringElement)
}

myNewDictionary.forEach{(key, value) in
    print("\(key): \(value)")
}

/** WHILE */

var myNumberArray: [Int] = []
for index in 1...20{
  myNumberArray.append(index)
}
print(myNumberArray)

var index = 0
while index < 10{
  print(myNumberArray)
  index += 1
}

/** REPEAT WHILE */
index = 0
repeat {
  print(myNumberArray[index])
  index += 1
}while index < 10

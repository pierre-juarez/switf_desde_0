import Foundation

class Programmer{
  let name: String
  let age: Int
  let languages: [Language]
  var friends : [Programmer]?
  
  init(name: String, age: Int, languages:[Language]) {
    self.name = name
    self.age = age
    self.languages = languages
  }
  
  enum Language{
    case swift
    case kotlin
    case java
    case javascript
  }
  
  func code(){
    print("I'm programming💻  \(languages)...")
  }
  
}

/** Instancia de una clase */
let Pierre = Programmer(name:"Pierre Juarez",age: 21, languages:[.swift,.kotlin])

Pierre.code()

let Sara = Programmer(name:"Sara Perez",age: 41, languages:[.java])

Sara.code()

Pierre.friends = [Sara]
print(Pierre.friends?.first?.name)
print(Sara.friends)

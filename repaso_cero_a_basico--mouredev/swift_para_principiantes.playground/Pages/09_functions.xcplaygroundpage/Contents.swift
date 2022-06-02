import Foundation

/** Declaración de función */
func sayHello(){
  print("Hello, Pierre")
}

sayHello();

/** Función con un parámetro de entrada */
func sayMyName(name:String){
  print("Hello, \(name)")
}

sayMyName(name: "Pierrecito");

/** Función con más de un parámetro de entrada */
func sayMyNameAndAge(name:String, age: Int){
  print("Hello, \(name), your age is  \(age)")
}

sayMyNameAndAge(name: "Pierrecito",age: 21);

/** Función con valor de retorno */
func helloString() -> String{
  return "Hello"
}
print(helloString())

/** Función con valor de retorno y parámetros de entrada */
func sumTwoNumbers(num1:Int,num2:Int) -> Int{
  return num1 + num2
}
let resultSum = sumTwoNumbers(num1:2,num2:3)
print(resultSum)

/** Función que llama a otra función */
func callFunctions(){
  sayHello();
  sayMyNameAndAge(name: "Jean",age: 210);
}
callFunctions()

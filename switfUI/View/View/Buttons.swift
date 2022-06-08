//
//  Buttons.swift
//  View
//
//  Created by Tech Fitco on 7/06/22.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        
      VStack{
        
        Button("Mi primer botón",action:{
          print("Textoooo")
        })
        
        Button("Mi segundo botón"){
          print("Segundo texto")
        }
        
        Button(action: {
          print("Texto 3")
        }, label:
                {
          Text("Botón desde label")
        })
        
        Button(action: { printHello() }, label: {
          Text("Botón + label + function")
        })
        
      }
    }
}

func printHello(){
  print("Texto desde una funcoón")
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}

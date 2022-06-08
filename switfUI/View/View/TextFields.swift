//
//  TextFields.swift
//  View
//
//  Created by Tech Fitco on 7/06/22.
//

import SwiftUI

struct TextFields: View {
    @State var textoVista:String = ""
    var body: some View {
      
      VStack {
        TextField("Ingrese texto", text: $textoVista)
        Text(textoVista)
        Button(action: {
          textoVista = "Nuevo texto"
        }, label: {
          Text("Cambia texto")
        })
      }
      
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}

//
//  Images.swift
//  View
//
//  Created by Tech Fitco on 7/06/22.
//

import SwiftUI

struct Images: View {
    var body: some View {
      VStack{
        Text("Imágenes")
        Image("platzi")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 100, height: 100, alignment: .center)
        
        Image("platzi")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 100, height: 100, alignment: .center)
          .blur(radius: 3.5)
        
        Image("platzi")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 100, height: 100, alignment: .center)
          .opacity(0.5)
          
        Button(action: {
          print("Click desde el botón")
        }, label: {
          Image("platzi")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100, alignment: .center)
        })
      }
      
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}

//
//  ZStackPadding.swift
//  View
//
//  Created by Tech Fitco on 9/06/22.
//

import SwiftUI

struct ZStackPadding: View {
    var body: some View {
      ZStack{
        Color.blue
        
        VStack{
          
          Text("Welcome to the course")
            .padding(.bottom,6.0)
          
          logos()
          
          datosUsuario()
         
          reto()
          
          TextMod()
          
          
        }
        
          
      }.ignoresSafeArea()
    }
}

struct logos: View{
  var body: some View{
    VStack{
      Image("platzi")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100, height: 100, alignment: .center)
      
      Image("platzi")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100, height: 100, alignment: .center)
      
      Image("platzi")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100, height: 100, alignment: .center)
    }
    }
}

struct datosUsuario: View{
  @State var curso : String = "iOs"
  var body: some View{
    ZStack{
      
      if curso == "" {
        Text("Curso")
          .foregroundColor(Color.red)
      }
      
      TextField("", text: $curso)
        .padding(.leading,8)
    }
  }
}

struct reto: View{
  var body: some View{
    VStack (alignment: .trailing) {
      Text("1").border(Color.blue)
      Text("2").border(Color.blue)
      Text("3").border(Color.blue)
      
      HStack (alignment: .top){
        Text("A").frame(width: 100, height: 100, alignment: .center).border(Color.blue)
        Text("B").border(Color.blue)
        Text("C").border(Color.blue)
      }.background(Color.green)
      
    }.border(Color.black)
      .background(Color.red)
    
  }
}

struct ZStackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZStackPadding()
    }
}

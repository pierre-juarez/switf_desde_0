//
//  ContentView.swift
//  GameStreamAppiOs
//
//  Created by Pierre Juarez on 9/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
      ZStack{
        Color("BackgroundColor")
          .ignoresSafeArea()
        
        VStack{
          
          Image("LogoGameStream")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:187)
            .padding(.bottom,60.0)
          
          LoginRegister()
         
        }
        
      }
      
    }
}

struct LoginRegister: View{
  var body: some View{
    
    VStack{
      HStack{
        Text("INICIA SESIÓN")
          .fontWeight(.bold)
          .foregroundColor(Color.white)
        
        Text("REGÍSTRATE")
          .foregroundColor(Color("WhiteAccent"))
          
          
      }
      
    }
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Image("LogIn")
    }
}

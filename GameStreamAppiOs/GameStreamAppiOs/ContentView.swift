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
        
        Spacer()
        
        Color("BackgroundColor")
          .ignoresSafeArea()
        
        VStack{
          
          Image("LogoGameStream")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:187)
            .padding(.bottom,50)
          
          LoginRegister()
         
        }
        
      }
      
    }
}

struct LoginRegister: View{
  @State var isViewLoginActive:Bool = true
  var body: some View{
    
    VStack{
      HStack{
        
        Spacer()
        
        Button {
          isViewLoginActive = true
        } label: {
          Text("INICIA SESIÓN")
            .fontWeight(isViewLoginActive ? .bold : .regular)
            .foregroundColor(isViewLoginActive ? Color("White") : Color("WhiteAccent"))
          
        }
        
        Spacer()
        
        Button {
          isViewLoginActive = false
        } label: {
          Text("REGÍSTRATE")
            .fontWeight(isViewLoginActive ? .regular : .bold)
            .foregroundColor(isViewLoginActive ? Color("WhiteAccent") : Color("White"))
        }
        
        Spacer()

        
      }
      
      Spacer(minLength: 42)
      
      if isViewLoginActive == true {
        viewLogin()
      }else{
        viewRegister()
      }
      
    }
    
  }
  
}

struct viewLogin: View{
  @State var email: String = ""
  @State var contraseña: String = ""
  
  var body: some View{
    
    ScrollView{
      
      VStack (alignment:.leading){
        
        Text("Correo electrónico")
          .foregroundColor(Color("PrimaryColor"))
        
        ZStack(alignment: .leading){
          
          if email.isEmpty{
            Text(verbatim: "ejemplo@gmail.com")
              .font(.caption)
              .foregroundColor(Color("WhiteAccent"))
          }
          
          
          TextField("", text: $email)
            .font(.caption)
            .foregroundColor(Color("White"))
          
        }
        
        Divider()
          .frame(height:1)
          .background(Color("PrimaryColor"))
          .padding(.bottom)
        
        Text("Contraseña")
          .foregroundColor(Color("PrimaryColor"))
        
        ZStack(alignment: .leading){
          
          if contraseña.isEmpty{
            Text(verbatim: "*******")
              .font(.caption)
              .foregroundColor(Color("WhiteAccent"))
          }
          
          
          SecureField("", text: $contraseña)
            .font(.caption)
            .foregroundColor(Color("White"))
          
        }
        
        
        Divider()
          .frame(height:1)
          .background(Color("PrimaryColor"))
          .padding(.bottom)
        
      }
      
      
    }.padding(.horizontal,30)
    
    
  }
}

struct viewRegister: View{
  var body: some View{
    Text("Register")
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Image("LogIn")
    }
}

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
          .foregroundColor(Color("White"))
        
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
        
        Text("¿Olvidaste tu contraseña?")
          .font(.footnote)
          .frame(width: 340, alignment: .trailing)
          .foregroundColor(Color("PrimaryColor"))
          .padding(.bottom)
        
        Button(action: login, label: {
          Text("INICIAR SESIÓN")
            .fontWeight(.bold)
            .foregroundColor(Color("White"))
            .frame(maxWidth: .infinity,alignment: .center)
            .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("PrimaryColor"),lineWidth: 1).shadow(color: Color("White"), radius: 6))
            .padding(.bottom)
        })
        
        Text("Inicia sesión con redes sociales")
          .foregroundColor(Color("White"))
          .fontWeight(.thin)
          .frame(width: 340, alignment: .center)
          .padding(EdgeInsets(top: 50, leading: 0, bottom: 15, trailing: 0))
        
        HStack{
          
          Button(action: {print("Iniciando con Facebook...")}, label: {
            btnFacebook()
          })
          
          
          Button(action: {print("Iniciando con Twitter...")}, label: {
            btnTwitter()
          })
          
          
        }.frame(width:340,alignment: .center)
        
        
      }
      
    }.padding(.horizontal,77)
    
  }
}

struct btnFacebook: View{
  var body: some View{
    ZStack{
      
      RoundedRectangle(cornerRadius: 10)
        .fill(Color("ButtonNetworksColor"))
        .frame(maxWidth: .infinity, minHeight: 40, alignment: .center)
      
      Text("Facebook")
        .fontWeight(.bold)
        .foregroundColor(Color("White"))
      
    }
  }
}

struct btnTwitter: View{
  var body: some View{
    ZStack{
      
      RoundedRectangle(cornerRadius: 10)
        .fill(Color("ButtonNetworksColor"))
        .frame(maxWidth: .infinity, minHeight: 40, alignment: .center)
      
      Text("Twitter")
        .fontWeight(.bold)
        .foregroundColor(Color("White"))
      
    }
  }
}

struct viewRegister: View{
  var body: some View{
    Text("Register")
  }
}

func login(){
  print("Iniciando sesión...")
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    Image("LogIn")
  }
}

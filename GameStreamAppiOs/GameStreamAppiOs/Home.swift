//
//  Home.swift
//  GameStreamAppiOs
//
//  Created by Tech Fitco on 15/06/22.
//

import SwiftUI

struct Home: View {
    @State var tabSelected:Int = 2
    var body: some View {
      
      
      TabView (selection: $tabSelected){
        
        Text("Perfil")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem{
            Image(systemName: "person")
            Text("Perfil")
          }.tag(0)
        
        Text("Juegos")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem{
            Image(systemName: "gamecontroller")
            Text("Juegos")
          }.tag(1)
        
        ScreenHone()
          .tabItem{
            Image(systemName: "house")
            Text("Inicio")
          }.tag(2)
        
        Text("Favoritos")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem{
            Image(systemName: "heart")
            Text("Favoritos")
          }.tag(3)
        
      }
      .accentColor(Color("White"))
    }
  
  init(){
    UITabBar.appearance().backgroundColor = UIColor(Color("TabBarColor"))
    
    print("Iniciando las vistas del Home...")
    
  }
  
}

struct ScreenHone:View{
  var body: some View{
    
    ZStack{
      
      Color("BackgroundColor").ignoresSafeArea()
      
      VStack{
        Text("Homecito")
          
      }.padding(.horizontal,18)
      
    }.navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
    
  }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

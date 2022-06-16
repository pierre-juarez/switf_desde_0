//
//  Home.swift
//  GameStreamAppiOs
//
//  Created by Tech Fitco on 15/06/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
      
      TabView{
        
        Text("Perfil")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem{
            Image(systemName: "person")
            Text("Perfil")
          }
        
        Text("Juegos")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem{
            Image(systemName: "gamecontroller")
            Text("Juegos")
          }
        
        Text("Home")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem{
            Image(systemName: "house")
            Text("Inicio")
          }
        
        Text("Favoritos")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem{
            Image(systemName: "heart")
            Text("Favoritos")
          }
        
      }
      
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

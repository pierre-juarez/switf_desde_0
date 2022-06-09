//
//  TabViews.swift
//  View
//
//  Created by Tech Fitco on 9/06/22.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
      TabView{
        
        TextMod()
          .tabItem {
            Text("Pantalla 1")
            Image(systemName: "moon")
          }
        
        TextFields()
          .tabItem {
            Text("Pantalla 2")
            Image(systemName: "play")
          }
        
        HStackVStackSpacers()
          .tabItem {
            Text("Pantalla 3")
            Image(systemName: "terminal")
          }
        
      }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}

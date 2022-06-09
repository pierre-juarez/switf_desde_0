//
//  Navigations.swift
//  View
//
//  Created by Tech Fitco on 9/06/22.
//

import SwiftUI

struct Navigations: View {
  @State var isDividersActive : Bool = false
    var body: some View {
      NavigationView{
        
        VStack {
          
          Text("Hello world")
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
              ToolbarItem(placement: .navigationBarTrailing) {
                
                Button(action: { isDividersActive.toggle() }, label: {
                  Text("+")
                })
              }
          })
          
          NavigationLink("Other link", destination: HStackVStackSpacers())
          
          NavigationLink(destination: Dividers(), isActive: $isDividersActive) {
            EmptyView()          }
        }
        
      }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}

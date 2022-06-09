//
//  Dividers.swift
//  View
//
//  Created by Tech Fitco on 8/06/22.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
      VStack {
        Circle()
          .frame(width: 100, height: 100, alignment: .center)
        
        Text("Black circle")
        
        Divider()
          .frame(height: 8)
          .background(Color.green)
        
        Rectangle()
          .frame(width: 200, height: 100, alignment: .center)
          .foregroundColor(Color.blue)
        Text("Blue rectangle")
      }
    }
}

struct Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Dividers()
    }
}

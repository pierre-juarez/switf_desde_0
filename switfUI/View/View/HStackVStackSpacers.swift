//
//  HStackVStackSpacers.swift
//  View
//
//  Created by Tech Fitco on 8/06/22.
//

import SwiftUI

struct HStackVStackSpacers: View {
    var body: some View {
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

struct HStackVStackSpacers_Previews: PreviewProvider {
    static var previews: some View {
        HStackVStackSpacers()
    }
}

//
//  TextMod.swift
//  View
//
//  Created by Tech Fitco on 7/06/22.
//

import SwiftUI

struct TextMod: View {
    var body: some View {
      Text("Nueva pestaña!")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundColor(Color.blue)
        .padding()
        .frame(width: 350, height: 100, alignment: .center)
        .background(Color.black)
    }
}

struct TextMod_Previews: PreviewProvider {
    static var previews: some View {
        TextMod()
    }
}

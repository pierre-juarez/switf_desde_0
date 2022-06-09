//
//  VideoPlayers.swift
//  View
//
//  Created by Tech Fitco on 9/06/22.
//

import SwiftUI
import AVKit

struct VideoPlayers: View {
  @State var isPlayerActive : Bool = false
    var body: some View {

      NavigationView{
                  
                  VStack{
                      
                      Button(action: {isPlayerActive = true}, label: {
                      
                          
                          
                          ZStack {
                              Image("cuphead").resizable().aspectRatio(contentMode: .fit)
                         
                              
                              Image(systemName: "play.fill").foregroundColor(.white)
                          
                          
                          
                          }
                      
                      
                      
                      
                      })
                      
                      
                      
                      
                      
                      NavigationLink(
                          destination:VideoPlayer(player: AVPlayer(url: URL(string: "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4")!)).frame(width: 420, height: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/),
                          isActive: $isPlayerActive,
                          label: {
                              EmptyView()
                          })
                      
                      
                      
                      
                  }
                  
                  
                
                  
              }
      
    }
}

struct VideoPlayers_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayers()
    }
}

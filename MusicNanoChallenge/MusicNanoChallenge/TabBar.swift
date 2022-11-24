//
//  TabBar.swift
//  MusicNanoChallenge
//
//  Created by Ciro Capasso on 22/11/22.
//

import SwiftUI

struct TabBar: View {
    @State var current = 2
    
    // Miniplayer Properties
    @State var expand = false
    
    @Namespace var animation
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView(selection: $current){
                
                Text("Listen Now")
                    .tag(1)
                    .tabItem {
                        
                        Image(systemName: "play.circle.fill")
                        
                        Text("Listen Now")
                        
                    }
                
                Text("Library")
                    .tag(1)
                    .tabItem {
                        
                        Image(systemName: "rectangle.stack.fill")
                        
                        Text("Library")
                    }
                
                Text("Radio")
                    .tag(0)
                    .tabItem {
                        
                        Image(systemName: "dot.radiowaves.left.and.right")
                        
                        Text("Radio")
                    }
                
               Search()
                    .tag(2)
                    .tabItem {
                        
                        Image(systemName: "magnifyingglass")
                        
                        Text("Search")
                    }
            }.accentColor(.pink)
            
            Miniplayer(animation: animation, expand: $expand)
            
            
        })
        
    }
        
}
    
    

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

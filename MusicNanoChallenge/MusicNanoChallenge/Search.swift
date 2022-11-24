//
//  Search.swift
//  MusicNanoChallenge
//
//  Created by Ciro Capasso on 22/11/22.
//

import SwiftUI

struct Search: View {
    
    @State var search = ""
    
    var columns = Array(repeating: GridItem(.flexible(),spacing: 20), count: 2)
    
    @StateObject var playlistViewModel = PlaylistsViewModel()
    
    var body: some View {
        
        ScrollView{
            
            VStack(spacing: 18){
                
                HStack{
                    
                    Text("Search")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                        .padding()
                    
                    Spacer(minLength: 0)
                }
                
                HStack(spacing: 15){
                    
                    Image(systemName: "magnifyngglass")
                        .foregroundColor(.primary)
                    
                    TextField("Search", text: $search)
                        
                }
                .padding(.vertical,10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)
                
                //Grid View Of Songs
                
                ScrollView(.vertical, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(playlistViewModel.playlists) { playlist in
                            VStack(alignment: .leading) {
                                playlist.image
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 183, height: 178)
                                    .background(.gray)
                                    .cornerRadius(5)
                                Text(playlist.name)
                                    .font(.system(size: 16))
                                Text(playlist.category)
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(uiColor: .systemGray))
                            }
                        }
                    }
                    .padding([.leading, .trailing], 18)
                    
                    HStack(spacing: 8) {
                        ForEach(playlistViewModel.playlists) { playlist in
                            VStack(alignment: .leading) {
                                playlist.image
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 183, height: 178)
                                    .background(.gray)
                                    .cornerRadius(5)
                                Text(playlist.name)
                                    .font(.system(size: 16))
                                Text(playlist.category)
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(uiColor: .systemGray))
                            }
                        }
                    }
                    .padding([.leading, .trailing], 18)
                    
                    HStack(spacing: 8) {
                        ForEach(playlistViewModel.playlists) { playlist in
                            VStack(alignment: .leading) {
                                playlist.image
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 183, height: 178)
                                    .background(.gray)
                                    .cornerRadius(5)
                                Text(playlist.name)
                                    .font(.system(size: 16))
                                Text(playlist.category)
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(uiColor: .systemGray))
                            }
                        }
                    }
                    .padding([.leading, .trailing], 18)
                    
                    HStack(spacing: 8) {
                        ForEach(playlistViewModel.playlists) { playlist in
                            VStack(alignment: .leading) {
                                playlist.image
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 183, height: 178)
                                    .background(.gray)
                                    .cornerRadius(5)
                                Text(playlist.name)
                                    .font(.system(size: 16))
                                Text(playlist.category)
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(uiColor: .systemGray))
                            }
                        }
                    }
                    .padding([.leading, .trailing], 18)
                }
                .offset(x: 0, y: 5)
                .padding(.bottom, 110)
                    
            }
            .padding()
            
            //padding miniplayer size as bottom
            .padding(.bottom,80)
        }
        
        
    }
        
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}

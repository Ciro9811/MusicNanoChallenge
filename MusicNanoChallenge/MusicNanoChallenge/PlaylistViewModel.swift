//
//  PlaylistViewModel.swift
//  MusicNanoChallenge
//
//  Created by Ciro Capasso on 24/11/22.
//

import Foundation
class PlaylistsViewModel: ObservableObject {
    @Published var playlists: [Playlist] = [
        Playlist(
            imageName: "Playlist0",
            name: "Pop Hits Italia",
            category: "Apple Music Pop Italiano"
        ),
        Playlist(
            imageName: "Playlist1",
            name: "RapIT",
            category: "Apple Music Rap Italiano"
        )
       
    ]
}


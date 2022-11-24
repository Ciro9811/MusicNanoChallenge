//
//  Playlist.swift
//  MusicNanoChallenge
//
//  Created by Ciro Capasso on 24/11/22.
//

import Foundation
import SwiftUI
struct Playlist: Identifiable {
    
    var id = UUID()
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var name: String
    var category: String
    
}

//
//  Model.swift
//  MusicPlayer
//
//  Created by Maxim Dmitrochenko on 12-09-2024.
//

import Foundation

struct SongModel: Identifiable {
    let id = UUID()
    let name: String
    let data: Data
    let artist: String?
    let coverImage: Data?
    let duration: TimeInterval?
}

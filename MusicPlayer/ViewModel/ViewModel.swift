//
//  ViewModel.swift
//  MusicPlayer
//
//  Created by Maxim Dmitrochenko on 12-09-2024.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var songs: [SongModel] = [
        SongModel(
            name: "Sindey Sweeny",
            data: Data(),
            artist: "Ken Carson",
            coverImage: Data(),
            duration: 0
        ),
        SongModel(
            name: "villain",
            data: Data(),
            artist: "lifelessgarments",
            coverImage: Data(),
            duration: 0
        ),
         SongModel(
            name: "hugo",
            data: Data(),
            artist: "che",
            coverImage: Data(),
            duration: 0
        ),
    ]
}

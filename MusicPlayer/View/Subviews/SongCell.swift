//
//  SongCell.swift
//  MusicPlayer
//
//  Created by Maxim Dmitrochenko on 12-09-2024.
//

import SwiftUI

struct SongCell: View {
    // MARK: - Properties
    let song: SongModel
    
    // MARK: - Body
    var body: some View {
        HStack {
            Color.white
                .frame(
                    width: 60,
                    height: 60
                )
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(song.name).nameFont()
                    .padding(.vertical, 2)
                Text(song.artist ?? "Unknown Artist").artistFont()
                    .padding(.vertical, 2)
            }
            
            Spacer()
            
            Text("2:22").artistFont()
        }
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
    }
}
 

#Preview {
    SongCell(
        song: SongModel(
            name: "hugo",
            data: Data(),
            artist: "che",
            coverImage: Data(),
            duration: 0
        )
    )
}

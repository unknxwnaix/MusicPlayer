//
//  ContentView.swift
//  MusicPlayer
//
//  Created by Maxim Dmitrochenko on 09-09-2024.
//

import SwiftUI

struct PlayerView: View {
    
    // MARK: - Properties
    @State var vm = ViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                
                /// List of songs
                List {
                    ForEach(vm.songs) { song in
                        SongCell(song: song)
                    }
                }
                .listStyle(.plain)
            }
            
            // MARK: - Navigation Bar
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        /// Action
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                    }
                }
            }
        }
    }
}

#Preview {
    PlayerView()
}

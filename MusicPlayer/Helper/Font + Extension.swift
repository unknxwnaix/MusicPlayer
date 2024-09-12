//
//  Fonts + Extension.swift
//  MusicPlayer
//
//  Created by Maxim Dmitrochenko on 12-09-2024.
//

import SwiftUI

extension Text {
    func nameFont() -> some View {
        self
            .foregroundColor(.white)
            .font(
                .system(
                    size: 16,
                    weight: .semibold,
                    design: .rounded
                )
            )
    }
    func artistFont() -> some View {
        self
            .foregroundColor(.white)
            .font(
                .system(
                    size: 14,
                    weight: .light,
                    design: .rounded
                )
            )
    }
}

struct FontsView: View {
    var body: some View {
        VStack {
            Text("NameFont")
                .nameFont()
            Text("ArtistFont")
                .artistFont()
        }
    }
}

#Preview {
    FontsView()
}

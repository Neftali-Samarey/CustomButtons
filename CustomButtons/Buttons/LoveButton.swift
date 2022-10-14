//
//  LoveButton.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/14/22.
//

import SwiftUI

struct LoveButton: View {

    @State var performedFavoriteSelection = false

    var body: some View {
        Button {
            self.performedFavoriteSelection.toggle()
        } label: {
            Image(systemName: !self.performedFavoriteSelection ? "heart" : "heart.fill")
                // test animation modifiers
                /*.rotationEffect(.degrees(self.performedFavoriteSelection ? 360.0 : 0.0))
                .animation(self.performedFavoriteSelection ? Animation.linear(duration: 0.5) : nil) */
        }
        .font(.largeTitle)
        .buttonStyle(LoveReactionButtonStyle())
    }
}

struct LoveButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoveButton()
    }
}

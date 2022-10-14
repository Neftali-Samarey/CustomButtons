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
            Image(systemName: self.performedFavoriteSelection ? "heart" : "heart.fill")
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

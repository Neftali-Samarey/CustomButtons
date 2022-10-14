//
//  LoveButton.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/14/22.
//

import SwiftUI

struct LoveButton: View {
    var body: some View {
        Button {
            print("Tapped")
        } label: {
            HStack {
                Image(systemName: "bookmark.fill")
                Text("Bookmark")
            }
        }
        .buttonStyle(GradientButtonStyle())

    }
}

struct LoveButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoveButton()
    }
}

//
//  LoveButton.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/14/22.
//

import SwiftUI

struct LoveButton: View {

    @State var performedFavoriteSelection = false
    @State var isPressed = false
    private let pressedStateValue: CGFloat = 1.56
    private let defaultStateValue: CGFloat = 1.0

    var body: some View {
        Button {
            // toggles the selection state
            self.performedFavoriteSelection.toggle()

            // Optional feedback generator
            let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
            hapticFeedback.impactOccurred()
        } label: {
            Image(systemName: !self.performedFavoriteSelection ? "heart" : "heart.fill")
        }
        .font(.largeTitle)
        .buttonStyle(LoveReactionButtonStyle())
        .opacity(isPressed ? 0.6 : 1.0)
        .scaleEffect(isPressed ? pressedStateValue : defaultStateValue)
        .pressedEvents {
            withAnimation(.easeIn(duration: 0.25)) {
                self.isPressed = true
            }
        } onRelease: {
            withAnimation {
                self.isPressed = false
            }
        }
    }
}

struct LoveButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoveButton()
    }
}

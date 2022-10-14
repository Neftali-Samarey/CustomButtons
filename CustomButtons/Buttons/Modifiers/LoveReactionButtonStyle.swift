//
//  LoveReactionButtonStyle.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/14/22.
//

import SwiftUI

/// Style effect: Will allow the button to react with an animation effect that eases out/in.
struct LoveReactionButtonStyle: PrimitiveButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.black)
            .onTapGesture {
                // allows the button to perform its action call
                configuration.trigger()
            }
    }
}

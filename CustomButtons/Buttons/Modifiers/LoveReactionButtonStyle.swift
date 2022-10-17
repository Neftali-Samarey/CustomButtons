//
//  LoveReactionButtonStyle.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/14/22.
//

import SwiftUI

struct LoveReactionButtonStyle: PrimitiveButtonStyle {

    @Environment(\.colorScheme) var colorScheme

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(colorScheme == .dark ? Color.black : Color.white)
            .onTapGesture {
                // allows the button to perform its action call
                configuration.trigger()
            }
    }
}

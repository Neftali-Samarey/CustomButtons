//
//  GradientButtonStyle.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/14/22.
//
// Notes: configuration object allows us to interact with the internal label, isPressed, role instance properties
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
    }
}

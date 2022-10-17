//
//  TapAnimation.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/16/22.
//

import SwiftUI

struct TapAnimation: ViewModifier {
    var onPress: () -> Void
    var onRelease: () -> Void

    func body(content: Content) -> some View {
        content
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged({_ in
                        onPress()
                    })
                    .onEnded({_ in
                        onRelease()
                    })
            )
    }
}

extension View {

    func pressedEvents(onPress: @escaping (() -> Void), onRelease: @escaping (() -> Void)) -> some View {
        modifier(TapAnimation(onPress: { onPress() }, onRelease: { onRelease() }))
    }
}

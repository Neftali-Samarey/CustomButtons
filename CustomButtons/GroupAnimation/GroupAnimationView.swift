//
//  GroupAnimationView.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/21/22.
//

import SwiftUI

struct GroupAnimationView: View {

    @State private var isActive = false
    let side: CGFloat = 200
    let otherSide: CGFloat = 400

    var body: some View {
        HStack {
            ZStack {
                LeadingView()
                    .frame(width: 200, height: 150)
                    .offset(x: isActive ? -40 : -side)
                    .offset(y: 10)
                    .opacity(isActive ? 1.0 : 0.2)
                    .animation(.easeIn(duration: 0.9), value: isActive)

                Spacer()

                TrailingView()
                    .frame(width: 200, height: 150)
                    .offset(x: isActive ? 20 : otherSide)
                    .offset(y: 30)
                    .opacity(isActive ? 1.0 : 0.2)
                    .animation(.easeIn(duration: 0.8), value: isActive)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 300)
        .onTapGesture {
            // manual
            isActive.toggle()
        }
        .onAppear {
            //delay
            isActive.toggle()
        }
    }

    func animateAction() {
        //
    }
}

struct GroupAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        GroupAnimationView()
    }
}

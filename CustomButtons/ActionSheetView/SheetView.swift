//
//  SheetView.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 11/4/22.
//

import SwiftUI

struct SheetView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            // animation view
            GroupAnimationView()
                .background(Color.white)

            // text
            Text("Neat Title 😎")
                .font(.system(size: 23.3, weight: .bold))

            Text("Some additional body text under here \nand some here!")
                .font(.body)
                .multilineTextAlignment(.center)
            Divider()
            Spacer()
            // button
            Button("Done", action: {
                presentationMode.wrappedValue.dismiss()
            })
            .frame(width: UIScreen.main.bounds.width - 80, height: 50)
            .background(Color.black)
            .foregroundColor(Color.white)
            .font(.system(size: 21.5, weight: .semibold))
            .cornerRadius(25)
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}

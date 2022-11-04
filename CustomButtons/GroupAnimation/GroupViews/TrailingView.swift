//
//  TrailingView.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/21/22.
//

import SwiftUI

struct TrailingView: View {
    var body: some View {
        Text("Trailing View \n and some othet stuff here as well")
            .background(Color.green)
            .frame(width: 200, height: 150)
            .cornerRadius(6)
    }
}

struct TrailingView_Previews: PreviewProvider {
    static var previews: some View {
        TrailingView()
    }
}

//
//  LeadingView.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/21/22.
//

import SwiftUI

struct LeadingView: View {
    var body: some View {
        Spacer()
        Text("Leading View, \n and some othet stuff here!")
            .background(Color.gray)
            .frame(width: 200, height: 150)
            .cornerRadius(6)
    }
}

struct LeadingView_Previews: PreviewProvider {
    static var previews: some View {
        LeadingView()
    }
}

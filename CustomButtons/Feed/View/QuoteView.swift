//
//  QuoteView.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/16/22.
//

import SwiftUI

struct QuoteView: View {

    var profileURL: String
    var profileUsername: String
    var profileQuote: String

    init(profileURL: String, profileUsername: String, profileQuote: String) {
        self.profileURL = profileURL
        self.profileUsername = profileUsername
        self.profileQuote = profileQuote
    }

    var body: some View {
        HStack {
            VStack {
                // profile photo
                Image(profileURL)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
            }
            VStack(alignment: .leading) {
                Text(profileUsername)
                    .font(.headline)
                Text("\"\(profileQuote)\"")
                    .italic().foregroundColor(.gray)
            }
            Spacer()
            LoveButton()
                .padding()

        }
        .padding()
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(profileURL: "", profileUsername: "", profileQuote: "")
    }
}

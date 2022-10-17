//
//  ContentView.swift
//  CustomButtons
//
//  Created by Neftali Samarey on 10/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    QuoteView(profileURL: "FeedPerson1", profileUsername: "Ingrid", profileQuote: "I don't like to work, I want to be a kid again!")
                    QuoteView(profileURL: "FeedPerson2", profileUsername: "Sebastian", profileQuote: "I overwork myself til 4 am. Sometimes I miss my morning standups!")
                    QuoteView(profileURL: "FeedPerson3", profileUsername: "Victor", profileQuote: "Nothing is better than a morning cup of coffee before work!")
                    QuoteView(profileURL: "FeedPerson4", profileUsername: "Nef", profileQuote: "Life is good with a glass of whiskey!")
                    QuoteView(profileURL: "FeedPerson5", profileUsername: "Alessia", profileQuote: "I really love emojis, specially in the workplace!")
                }
            }
            .navigationTitle("Workplace Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

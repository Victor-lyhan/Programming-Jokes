//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Victor Han on 2022/7/26.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(destination: Text(joke.punchline)
                    .padding()) {
                        Text(joke.setup)
                    }
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear {
            getJokes()
        }
    }
    
    func getJokes() {
        let apiKey = "?rapidapi-key=d582ffb81bmsh2b53131e0f4dbedp18510bjsnea5f7f34cb91"
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup = ""
    var punchline = ""
}

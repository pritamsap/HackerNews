//
//  ContentView.swift
//  HackerNews
//
//  Created by pritam on 2023-12-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) {
                post in Text(post.title)
            }
            .navigationTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [Post(id: "1", title: "hello"),
             Post(id: "2", title: "Qui"),
             Post(id: "3", title: "Namaste")]

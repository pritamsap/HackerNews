//
//  ContentView.swift
//  HackerNews
//
//  Created by pritam on 2023-12-27.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager =  NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailedView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//let posts = [Post(id: "1", title: "hello"),
//             Post(id: "2", title: "Qui"),
//             Post(id: "3", title: "Namaste")]

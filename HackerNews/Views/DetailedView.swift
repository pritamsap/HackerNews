//
//  DetailedView.swift
//  HackerNews
//
//  Created by pritam on 2023-12-28.
//

import SwiftUI

struct DetailedView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(url: "https://www.google.com")
    }
}


//
//  DetailUIView.swift
//  H4XOR News
//
//  Created by Aleksandra Asichka on 2023-05-09.
//

import SwiftUI
import WebKit

struct DetailUIView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailUIView(url: "https://www.google.com")
    }
}


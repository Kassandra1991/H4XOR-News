//
//  WebView.swift
//  H4XOR News
//
//  Created by Aleksandra Asichka on 2023-05-09.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeUrl = urlString else {return}
        guard let url = URL(string: safeUrl) else {return}
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

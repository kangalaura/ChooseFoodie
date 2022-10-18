//
//  HTMLView.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 23.09.22.
//

import Foundation
import SwiftUI
import WebKit

struct HTMLView: UIViewRepresentable {
  
    let htmlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmlString, baseURL: nil)
    }
    
}

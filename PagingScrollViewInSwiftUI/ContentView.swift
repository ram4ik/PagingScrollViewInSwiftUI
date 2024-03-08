//
//  ContentView.swift
//  PagingScrollViewInSwiftUI
//
//  Created by test on 08.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VerticalPagingView()
                .tabItem {
                    Label("Vertical", systemImage: "distribute.vertical.top.fill")
                }
            
            HorizontalPagingView()
                .tabItem {
                    Label("Horizontal", systemImage: "square.filled.and.line.vertical.and.square")
                }
        }
    }
}

#Preview {
    ContentView()
}

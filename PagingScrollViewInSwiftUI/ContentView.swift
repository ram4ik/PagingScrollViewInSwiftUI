//
//  ContentView.swift
//  PagingScrollViewInSwiftUI
//
//  Created by test on 08.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                ForEach(0..<10) { index in
                    Rectangle()
                        .frame(width: 300, height: 300)
                        .overlay {
                            Text("\(index)")
                                .foregroundStyle(.white)
                        }
                        .frame(maxWidth: .infinity)
                }
            }
        }
        .scrollTargetLayout()
        .scrollTargetBehavior(.viewAligned)
        .scrollBounceBehavior(.always)
    }
}

#Preview {
    ContentView()
}

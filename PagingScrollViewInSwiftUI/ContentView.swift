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
            VStack(spacing: 0) {
                ForEach(0..<10) { index in
                    Rectangle()
                        .overlay {
                            Text("\(index)")
                                .foregroundStyle(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .containerRelativeFrame(.vertical, alignment: .center)
                }
            }
        }
        .ignoresSafeArea()
        .scrollTargetLayout()
        .scrollTargetBehavior(.paging)
        .scrollBounceBehavior(.always)
    }
}

#Preview {
    ContentView()
}

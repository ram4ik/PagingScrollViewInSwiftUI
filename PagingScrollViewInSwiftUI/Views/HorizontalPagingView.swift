//
//  HorizontalPagingView.swift
//  PagingScrollViewInSwiftUI
//
//  Created by test on 08.03.2024.
//

import SwiftUI

struct HorizontalPagingView: View {
    @State private var scrollPosition: Int? = nil
    
    var body: some View {
        VStack {
            Button("Scroll to") {
                scrollPosition = (0..<20).randomElement()
            }
            
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(width: 300, height: 300)
                            .cornerRadius(10)
                            .overlay {
                                Text("\(index)")
                                    .foregroundStyle(.white)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(10)
                            .id(index)
                    }
                }
            }
            .ignoresSafeArea()
            .scrollTargetLayout()
            .scrollTargetBehavior(.viewAligned)
            .scrollBounceBehavior(.basedOnSize)
            .scrollPosition(id: $scrollPosition, anchor: .center)
            .animation(.smooth, value: scrollPosition)
        }
    }
}

#Preview {
    HorizontalPagingView()
}

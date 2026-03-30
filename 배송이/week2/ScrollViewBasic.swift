//
//  ScrollViewBasic.swift
//  
//
//  Created by 배송이 on 3/30/26.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        
        VStack(spacing: 40) {
            
            // 1. 세로 스크롤
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(0..<5) { index in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 300)
                            .overlay(
                                Text("\(index)번")
                                    .font(.title)
                            )
                    }
                }
            }
            
            // 2. 가로 스크롤
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    ForEach(0..<10) { index in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 300, height: 300)
                            .overlay(
                                Text("\(index)번")
                                    .font(.title)
                            )
                    }
                }
            }
            
            // 3. 혼합 스크롤 (세로 + 가로)
            ScrollView(.vertical, showsIndicators: true) {
                LazyVStack {
                    ForEach(0..<10) { _ in
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0..<20) { _ in
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10)
                                        .padding()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBasic()
    }
}

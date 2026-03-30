//
//  LazyGridBasic.swift
//  
//
//  Created by 배송이 on 3/30/26.
//

import SwiftUI

struct LazyGridBasic: View {
    
    // 1. LazyVGrid용 3열
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
    ]
    
    // 2. LazyHGrid용 데이터
    let title: [String] = Array(1...1000).map { "목록 \($0)" }
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        ScrollView {
            
            // Hero 영역
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            // 1. LazyVGrid
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ) {
                
                // Section 1
                Section(
                    header:
                        Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.gray)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index)번")
                            )
                    }
                }
                
                // Section 2
                Section(
                    header:
                        Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.green)
                        .padding()
                ) {
                    ForEach(20..<40) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index)번")
                            )
                    }
                }
            }
            
            Divider().padding()
            
            // 2. LazyHGrid
            ScrollView(.horizontal) {
                LazyHGrid(rows: layout, spacing: 20) {
                    ForEach(title, id: \.self) { item in
                        VStack {
                            Capsule()
                                .fill(Color.yellow)
                                .frame(height: 30)
                            
                            Text(item)
                                .foregroundColor(.blue)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct LazyGridBasic_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBasic()
    }
}

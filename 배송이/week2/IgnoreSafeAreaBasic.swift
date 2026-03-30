//
//  IgnoreSafeAreaBasic.swift
//  
//
//  Created by 배송이 on 3/30/26.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        
        VStack(spacing: 40) {
            
            // 1. 기본 풀스크린 배경
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                
                VStack {
                    Text("Hello, World!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            }
            
            // 2. 스크롤 리스트 + 전체 배경
            ScrollView {
                VStack {
                    Text("박스형 리스트")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity)
                    
                    ForEach(1..<11) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding()
                            .overlay(
                                Text("\(index)번 리스트")
                            )
                    }
                }
            }
            .background(
                Color.blue
                    .ignoresSafeArea()
            )
        }
    }
}

struct IgnoreSafeAreaBasic_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreSafeAreaBasic()
    }
}

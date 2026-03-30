//
//  PaddingBasic.swift
//  
//
//  Created by 배송이 on 3/30/26.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            // 1. Padding 기본
            Text("Hello, World!")
                .background(Color.yellow)
                .padding()                  // 전체 padding
                .padding(.leading, 20)     // 왼쪽 padding
                .background(Color.blue)
                .padding(.bottom, 20)      // 아래 여백
            
            Divider()
            
            // 2. Padding 응용
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("""
안녕하세요 헬로우 월드에 오신 여러분 환영합니다.
안녕하세요 헬로우 월드에 오신 여러분 환영합니다.
안녕하세요 헬로우 월드에 오신 여러분 환영합니다.
안녕하세요 헬로우 월드에 오신 여러분 환영합니다.
""")
        }
        // VStack 전체에 적용
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 10,
                    y: 10
                )
        )
        .padding()
    }
}

struct PaddingBasic_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBasic()
    }
}

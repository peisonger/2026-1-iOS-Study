//
//  SpacerBasic.swift
//  
//
//  Created by 배송이 on 3/30/26.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        
        VStack(spacing: 50) {
            
            // 1. Spacer 기본 예시
            HStack(spacing: 0) {
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
            }
            
            // 2. Spacer로 균등 분배
            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
            }
            .background(Color.yellow)
            
            // 3. 앱 상단 바 UI
            VStack {
                HStack(spacing: 0) {
                    Image(systemName: "xmark")
                    
                    Spacer()
                    
                    Image(systemName: "gear")
                }
                .font(.title)
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct SpacerBasic_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBasic()
    }
}

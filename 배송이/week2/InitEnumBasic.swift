//
//  InitEnumBasic.swift
//  
//
//  Created by 배송이 on 3/30/26.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // 저장 프로퍼티
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    // 사용자 정의 init
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitEnumBasic_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitEnumBasic(count: 100, fruit: .apple)
            InitEnumBasic(count: 46, fruit: .orange)
        }
    }
}

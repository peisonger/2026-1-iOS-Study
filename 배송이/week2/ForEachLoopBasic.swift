//
//  ForEachLoopBasic.swift
//  
//
//  Created by 배송이 on 3/30/26.
//

import SwiftUI

struct ForEachLoopBasic: View {
    
    // 데이터 배열
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            
            // 1. 숫자 범위 반복
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호 : \(index)번")
                }
            }
            
            Divider()
            
            // 2. 배열 데이터 반복
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct ForEachLoopBasic_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoopBasic()
    }
}

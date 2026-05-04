//
//  OnTabGestureBasic.swift
//  SwiftUIBasic

import SwiftUI

struct OnTabGestureBasic: View {
	// property
	@State var isSelected: Bool = false
	
    var body: some View {
		VStack (spacing: 40) {
			// Rectangle 박스
			RoundedRectangle(cornerRadius: 25.0)
				.frame(height: 200)
				.foregroundColor(isSelected ? Color.green : Color.red)
			
			// 1. 일반적인 Button
			Button {
				isSelected.toggle()
			} label: {
				Text("1. 일반적인 Button")
					.font(.headline)
					.foregroundColor(.white)
					.frame(height: 55)
					.frame(maxWidth: .infinity)
					.background(Color.blue)
					.cornerRadius(25.0)
			}
			
			// 2. onTabGesture 한번 클릭시 실행
			Text("2. onTabGeture 한번 클릭")
				.font(.headline)
				.foregroundColor(.white)
				.frame(height: 55)
				.frame(maxWidth: .infinity)
				.background(Color.blue)
				.cornerRadius(25.0)
				.onTapGesture {
					isSelected.toggle()
				}
			
			// 3. onTabGesture 두번 클릭시 실행
			Text("3. onTabGeture 두번 클릭")
				.font(.headline)
				.foregroundColor(.white)
				.frame(height: 55)
				.frame(maxWidth: .infinity)
				.background(Color.blue)
				.cornerRadius(25.0)
				.onTapGesture(count: 3) {
					isSelected.toggle()
				}

			Spacer()
		}//: VSTACK
		.padding(40)
    }
}

//struct OnTabGestureBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        OnTabGestureBasic()
//    }
//}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    OnTabGestureBasic()
}

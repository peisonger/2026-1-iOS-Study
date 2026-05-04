//
//  OnAppearBasic.swift
//  SwiftUIBasic
//


import SwiftUI

struct OnAppearBasic: View {
	// property
	@State var noticeText: String = "onAppear 시작전"
	@State var count: Int = 0
	
    var body: some View {
		NavigationView {
			ScrollView {
				Text(noticeText)
				
				// 화면이 보이고 나서 load 가 되게끔 하는 LazyStack
				LazyVStack {
					// 50 개의 직사각형 박스 만들기
					ForEach(0..<50) { _ in
						RoundedRectangle(cornerRadius: 25.0)
							.frame(height: 200)
							.padding()
						// onAppear: 새로 화면에 생길때 마다 count 1씩 증가 시키기
							.onAppear {
								count += 1
							}
					} //: LOOP
				} //: LAZYVSTACK
			}//: SCROLL
			// .opAppear: 여기성 onAppearBasic View 가 화면에 나타날때 시작되는 logic 넣기
			.onAppear {
				// dispatchQueue 을 사용해서 main thread 에 2초 딜레이 후 이벤트 실행
				DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
					noticeText = "onAppear 시작 완료 했습니다"
				}
			}
			.navigationTitle("생성된 박스 : \(count)")
		} //: NAVIGATION
    }
}

//struct OnAppearBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        OnAppearBasic()
//    }
//}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    OnAppearBasic()
}

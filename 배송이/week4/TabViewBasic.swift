//
//  TabViewBasic.swift
//  SwiftUIBasic
//


import SwiftUI

struct TabViewBasic: View {
	// property
	@State var initPageNumber: Int = 0
	
    var body: some View {
		// section: TabView 가 어디 페이지를 가리키는지 설정하는것
		TabView(selection: $initPageNumber) {
			HomeView(selectedTab: $initPageNumber)
				.tabItem {
					Image(systemName: "house.fill")
					Text("Home")
				}
				.tag(0)
			
			Text("둘러보기 화면")
				.tabItem {
					Image(systemName: "globe")
					Text("Browse")
				}
				.tag(1)
			
			Text("프로필 화면")
				.tabItem {
					Image(systemName: "person.fill")
					Text("Profile")
				}
				.tag(2)
		}
		.accentColor(.red)
    }
}


//struct TabViewBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        TabViewBasic()
//    }
//}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    TabViewBasic()
}


// HomeView
struct HomeView: View {
	@Binding var selectedTab: Int
	
	var body: some View {
		ZStack {
			// background
			Color.red.edgesIgnoringSafeArea(.top)
			
			// foreground
			VStack (spacing: 20) {
				Text("홈 화면")
					.font(.largeTitle)
					.foregroundColor(.white)
				
				Button {
					selectedTab = 2
				} label: {
					Text("프로필 화면 이동")
						.font(.headline)
						.padding(20)
						.padding(.horizontal)
						.background(Color.white)
						.cornerRadius(10)
				}
			}//: VSTACK
		} //: ZSTACK
	}
}


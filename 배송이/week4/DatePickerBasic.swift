//
//  DatePickerBasic.swift
//  SwiftUIBasic
//

import SwiftUI

struct DatePickerBasic: View {
	// property
	@State var selectedDate1: Date  = Date()
	@State var selectedDate2: Date  = Date()
	@State var selectedDate3: Date  = Date()
	@State var selectedDate4: Date  = Date()
	@State var selectedDate5: Date  = Date()
	
	// 현재 시간 String 으로 화면에 나타내기
	var currentDate: String {
		// Date() 하면 오늘 날짜 시간 불러오기
		let current = Date()
		let formatter = DateFormatter()
		
		// 한국 시간으로 표시
		formatter.locale = Locale(identifier: "ko_kr") // 날자와 시간
		// formatter.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대
		
		// 형태 변환
		formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
		formatter.amSymbol = "오전"
		formatter.pmSymbol = "오후"
		
		// String 타입으로 변환 해서 return
		return formatter.string(from: current)
	}
	
	
	// DatePicker 용 DateFormatter
	var dateFomatter: DateFormatter {
		let formatter = DateFormatter()
		formatter.dateStyle = .medium
		formatter.timeStyle = .short
		return formatter
	}
	
    var body: some View {
		ScrollView(.vertical, showsIndicators: true) {
			VStack (spacing: 20) {
				Text("현재시간: \(currentDate)")
				
				Divider()
				
				// 기본 DatePicker
				VStack {
					DatePicker("기본 DatePicker", selection: $selectedDate1)
						.accentColor(Color.red)
						.datePickerStyle(.compact)
					
					Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate1))")
				}
				
				Divider()
				
				// 달력형태 picker
				VStack {
					DatePicker("달력", selection: $selectedDate2)
						.datePickerStyle(.graphical)
					Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate2))")
				}
				
				Divider()
				
				// 휠 스타일 picker
				VStack {
					DatePicker("휠", selection: $selectedDate3)
						.datePickerStyle(.wheel)
					Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate3))")
				}
				
				Divider()
				
				// 날짜만 선택, 시간만 선택
				VStack {
					DatePicker("날짜만 선택", selection: $selectedDate4, displayedComponents: [.hourAndMinute])
					Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate4))")
				}
								
			} //: VStack
			.padding()
		} //: Scroll
    }
	
	// function
	func dateToKR (selectedDate: Date) -> String {
		let formatter = DateFormatter()
		
		// 한국 시간으로 표시
		formatter.locale = Locale(identifier: "ko_kr") // 날자와 시간
		// formatter.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대
		
		// 형태 변환
		formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
		formatter.amSymbol = "오전"
		formatter.pmSymbol = "오후"
		
		// String 타입으로 변환 해서 return
		return formatter.string(from: selectedDate)
	}
}

//struct DatePickerBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        DatePickerBasic()
//    }
//}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    DatePickerBasic()
}

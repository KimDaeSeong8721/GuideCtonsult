//
//  ReservationView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/14.
//

import SwiftUI

struct ReservationView: View {
    
    //MARK: - Properties
    @State private var date = Date()
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yy.MM.dd"
        return formatter
    }()
    
    //MARK: - Body
    var body: some View {
        GeometryReader { geo in
            VStack {
                ScrollView {
                    VStack {
                        //MARK: - 프로필 정보
                        BoxView(padding: 16) {
                            HStack {
                                Image("profile")
                                    .resizable()
                                    .frame(width: 114, height: 114)
                                VStack(alignment: .leading, spacing: 5) {
                                    HStack {
                                        Text("DAESEONG KIM")
                                            .font(.system(size: 16, weight: .semibold))
                                        Image("koreaFlag")
                                            .resizable()
                                            .frame(width: 15, height: 15)
                                    }
                                    
                                    HStack(spacing: 5) {
                                        Image(systemName: "globe")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                        Text("English & Korean")
                                    }
                                    
                                    HStack(spacing: 5) {
                                        Image(systemName: "house")
                                            .resizable()
                                            .frame(width: 12, height: 10)
                                        Text("Seoul Dobongu")
                                    }
                                    
                                    HStack(spacing: 5) {
                                        Image("map")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                        Text("English & KoreanDobongu")
                                            .fixedSize(horizontal:false, vertical: true)
                                    }
                                    
                                    HStack(spacing: 5) {
                                        Image("Coffee")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                        Text("Dutch pay")
                                    }
                                    
                                    HStack(spacing: 5) {
                                        Image("Instar")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                        Text("********")
                                            .opacity(0.4)
                                    }
                                    
                                }
                                .font(.system(size: 12))
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .padding(16)
                        
                        
                        //MARK: - 캘린더
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Reservation Date")
                                .font(.system(size: 16, weight: .semibold))
                                .padding(.leading, 8)
                            
                            BoxView {
                                DatePicker(
                                    "Start Date",
                                    selection: $date,
                                    displayedComponents: [.date])
                                .datePickerStyle(.graphical)
                            }
                            .font(.system(size: 14))
                        }
                        .padding(.horizontal,16)
                        .frame(maxWidth: .infinity)
                        
                        //MARK: - 시간
                        
                        //MARK: - 취소 및 환불규정
                        
                        
                    }
                }
                
                Spacer()
                
                //MARK: - 하단 바
                VStack {
                    HStack {
                        
                        VStack {
                            HStack {
                                Text("Price:")
                                    .font(.system(size: 14))
                                
                                Text("15000원")
                                    .font(.system(size: 18))
                            }
                            .frame(maxWidth: .infinity)
                            
                            HStack {
                                Text("Date:")
                                    .font(.system(size: 14))
                                
                                Text(dateFormatter.string(from: date))
                                    .font(.system(size: 18))
                            }
                            .frame(maxWidth: .infinity)
                        }
                        
                        Button {
                            
                        } label: {
                            ButtonView(title: "예약 요청", height: 50)
                        }
                        .frame(maxWidth: .infinity)
                        
                        
                    }
                    .padding(.horizontal,16)
                    
                }
                .frame(height: 84)
                .background(Color(uiColor: UIColor.systemGray5))
                .overlay {
                    VStack {
                        Rectangle()
                            .frame(height: 0.5)
                            .opacity(0.4)
                        Spacer()
                    }
                    
                }
            }
            .navigationTitle("예약 하기")
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarRole(.editor)
            .background(Color.backgroundGray)

        }
    }
    
    
    
}


struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}


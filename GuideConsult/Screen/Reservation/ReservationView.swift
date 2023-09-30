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
    
    private var endTime: Date {
        return Date(timeInterval: 60*60, since: date)
    }
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yy.MM.dd"
        return formatter
    }()
    
    private let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter
    }()
    
    //MARK: - Body
    var body: some View {
        GeometryReader { geo in
            VStack {
                Form {
                    //MARK: - 프로필
                    Section {
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
                    }
                    //MARK: - 캘린더
                    Section {
                        DatePicker(
                            "Start Date",
                            selection: $date,
                            displayedComponents: [.date])
                        .datePickerStyle(.graphical)
                        
                    } header: {
                        Text("Reservation Date")
                            .padding(.leading, -16)
                            .foregroundColor(.black)
                    }

                    //MARK: - 시간
                    Section {
                        VStack {
                            DatePicker("Pick a Reservation Time", selection: $date,displayedComponents: [.hourAndMinute])
                            
                            Divider()
                            HStack {
                                Text("End Time")
                                Spacer()
                                Text("\(timeFormatter.string(from: endTime))")
                                    .font(.system(size: 16))
                                    .padding(.horizontal,10)
                            }
                        }
                    } header: {
                        Text("Time")
                            .padding(.leading, -16)
                            .foregroundColor(.black)
                    }
                    
                    //MARK: - 취소 환불 규정

                    Section {
                        Text("""
        Eligibility for Refunds and Exchanges
        - Your item must be unused and in the same condition that you received it.
        - The item must be in the original packaging. /
        - To complete your return, we require a receipt or proof of purchase.
        - Only regular priced items may be refunded, sale items cannot be refunded.
        - If the item in question was marked as a gift when purchased and shipped directly to you, you will receive a gift credit for the value of your return
        """)
                     .font(.system(size: 14))
                    } header: {
                        Text("Policy for Cancel and Refunds")
                            .padding(.leading, -16)
                            .foregroundColor(.black)
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


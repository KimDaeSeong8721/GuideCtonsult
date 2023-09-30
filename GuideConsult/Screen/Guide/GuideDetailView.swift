//
//  GuideDetailView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/13.
//

import SwiftUI

struct GuideDetailView: View {
    
    let profileElements = ["Name", "Region", "Language", "Age"]
    let profileEleContents = ["Alex", "Seoul Dobongu", "English & Japanese", "18"]
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                // MARK: - ProfileImage
                HStack(alignment: .center) {
                    Spacer()
                    Image("profile")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .scaledToFill()
                        .padding(.top,24)
                    Spacer()
                }
                Form {
                    //                    VStack(alignment: .leading, spacing: 24) {
                    
                    
                    
                    // MARK: - Profile
                    Section {
                        VStack(alignment: .leading, spacing: 5) {
                            ForEach(0 ..< 4) { i in
                                HStack {
                                    Text(profileElements[i])
                                        .fontWeight(.semibold)
                                    Text(profileEleContents[i])
                                    Spacer()
                                }
                            }
                        }
                        .font(.system(size: 14))
                    }
                header: {
                    Text("Profile")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading, -16)
                        .foregroundColor(.black)
                }
                    
                    // MARK: - Introduce
                    Section {
                        VStack(alignment: .leading, spacing: 5) {
                            HStack {
                                Text("Hi my name is Alex I lived in Seoul dobongu.Hi my name is Alex I lived in Seoul dobongu.")
                                    .fixedSize(horizontal: false, vertical: true) // 이해 안감
                                Spacer()
                            }
                            Text("\n")
                            HStack {
                                Text("#NightView #Dobongu #Landscape")
                                    .opacity(0.6)
                                Spacer()
                            }
                        }
                        .font(.system(size: 14))
                    }
                header: {
                    Text("Introduce")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading, -16)
                        .foregroundColor(.black)
                    
                }
                    
                    // MARK: - Meeting Place
                    Section {
                        VStack(alignment: .leading, spacing: 5) {
                            HStack {
                                Text("Dobongu station 1st")
                                    .fixedSize(horizontal: false, vertical: true) // 이해 안감
                                Spacer()
                            }
                        }
                        .font(.system(size: 14))
                    }
                header: {
                    Text("Meeting Place")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading, -16)
                        .foregroundColor(.black)
                    
                }
                    // MARK: - Review
                    Section {
                            VStack(alignment: .leading, spacing: 5) {
                                
                                HStack {
                                    Image("profile")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    
                                    VStack(alignment: .leading,spacing: 5) {
                                        Text("⭐ 5.0")
                                        Text("2023.09.05")
                                            .opacity(0.6)
                                        Text("It was good. It was good.It was good.It was good.It was good.")
                                            .fixedSize(horizontal: false, vertical: true)
                                        
                                    }
                                    .padding(.bottom, 24)
                                }
                                
                                Button {
                                    
                                } label: {
                                    Text("후기 999개 모두 보기")
                                        .foregroundColor(Color.black)
                                        .frame(maxWidth: .infinity, minHeight: 38)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.black.opacity(0.6), lineWidth: 1))
                                }
                            }
                            .font(.system(size: 14))
                            
                    }
                header: {
                    HStack {
                        Text("Review")
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("⭐ 4.5 (+999)")
                            .font(.system(size: 12))
                            .opacity(0.6)
                    }
                    .padding(.leading, -16)
                    .foregroundColor(.black)
                }
                    Spacer()
                }
                
                Spacer()
                
                //MARK: - 하단 바
                VStack {
                    
                    HStack {
                        
                        HStack {
                            Text("Price")
                                .font(.system(size: 14))
                            
                            Text("15000원")
                                .font(.system(size: 18))
                        }
                        .frame(maxWidth: .infinity)
                        
                        NavigationLink(destination: {
                            ReservationView()
                        }, label: {
                            ButtonView(title: "일정 선택", height: 50)
                        })
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
        }
        .background(Color.backgroundGray)
        .navigationTitle("가이드 페이지")
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarRole(.editor)
    }
}

struct GuideDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GuideDetailView()
    }
}

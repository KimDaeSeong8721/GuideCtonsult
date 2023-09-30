//
//  SettingView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/30.
//

import SwiftUI

struct SettingView: View {
    @State var isGuide = false
    @State var isNotiOn = true
    
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 16) {
                
                if isGuide {
                    Rectangle()
                        .fill(Color.point)
                            .frame(width: UIScreen.main.bounds.width, height: 30)
                            .overlay {
                                Text("GUIDE")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16,weight: .semibold))
                            }
                }
                    
                    Image("profile")
                        .resizable()
                        .frame(width: 180,height: 180)
                        .overlay(alignment: .bottomTrailing) {
                            Image("koreaFlag")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .overlay(RoundedRectangle(cornerRadius: 20
                                                         )
                                    .stroke(.black.opacity(0.4), lineWidth: 0.5))
                                .offset(x: 20, y: 10)
                        }
                        .padding(.bottom, 8)
                        .padding(.top,24)
                    
                    Text("DAESEONG KIM")
                        .font(.system(size: 18))
                    
                    ButtonView(title: "EDIT PROFILE", titleSize:14, height: 24)
                        .frame(width: 168)
                }
                VStack(spacing: 16) {
                    
                    HStack {
                        Text("보석 충전하기")
                        Spacer()
                        Text("500개")
                    }
                    HStack {
                        Text("푸시 알림")
                        Spacer()
                        Toggle(isOn: $isNotiOn) {
                            Text("")
                        }
                        .tint(.point)
                    }
                    Divider()
                    
                    HStack {
                        Text("가이드 신청하기")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                    HStack {
                        Text("가이드로 전환하기")
                        Spacer()
                        Toggle(isOn: $isGuide) {
                            Text("")
                        }
                        .tint(.point)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("탈퇴 하기")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 24)
        }
    }
    
    struct SettingView_Previews: PreviewProvider {
        static var previews: some View {
            SettingView()
        }
    }

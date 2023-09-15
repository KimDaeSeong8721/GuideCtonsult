//
//  StartView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/11.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        
        NavigationView {
            GeometryReader { geo in
                ZStack {

                    Text("GUIDE")
                        .font(.system(size: 64, weight: .semibold))
                        .foregroundColor(.point)
                    
                    VStack {
                        Spacer()
                        
                        VStack(spacing: 24) {
                            NavigationLink(destination: AuthView()) {
                                ButtonView(title: "계정 만들기")
                                    .padding(.horizontal, 16)
                                    }
                            
                            Button (action: {
                                
                            }, label: {
                                Text("로그인")
                                    .font(.system(size: 16,weight: .semibold))
                                    .foregroundColor(.point)
                                
                            })
                            .frame(width: geo.size.width - 32, height: 56)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.point, lineWidth: 2))
                        }
                        .padding(.bottom, 34)
                    }
                    
                }
                .frame(width: geo.size.width
                       ,height: geo.size.height)
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

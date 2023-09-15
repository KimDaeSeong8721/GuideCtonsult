//
//  SearhOptionView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/12.
//

import SwiftUI

struct SearhOptionView: View {

    //MARK: - Properties
    @State var isOn = false
    let languages = ["영어", "프랑스어", "스페인어", "독일어"]
    @State var selectedLanguage: String? = nil
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - Body
    var body: some View {
        
        VStack(spacing: 24) {
            ZStack {
                HStack {
                    Button() {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                Text("검색 옵션")
                    .font(.system(size: 20,weight: .semibold))
            }
            
            // 여행지
            VStack(alignment: .leading, spacing: 16) {
                Text("여행지")
                    .font(.title3)
                VStack(spacing: 12) {
                    //나라
                    HStack {
                        Text("나라")
                            .opacity(0.8)
                        Spacer()
                        HStack {
                            Text("Korea")
                            Image(systemName: "chevron.right")
                        }
                        .foregroundColor(.black)
                        .opacity(0.4)
                    }
                    .font(.callout)
                    //도시
                    HStack {
                        Text("도시")
                            .opacity(0.8)
                        Spacer()
                        HStack {
                            Text("Seoul")
                            Image(systemName: "chevron.right")
                        }
                        .foregroundColor(.black)
                        .opacity(0.4)
                    }
                    .font(.callout)
                }
            }
            .padding(.top, 24)
            
            Divider()
            // 가이드 언어
            VStack(alignment: .leading, spacing: 16) {
                Text("가이드 언어")
                    .font(.title3)
                
                ForEach(languages, id: \.self) { lang in
                    LanguageCell(language: lang,
                                 selectedLanguage: self.$selectedLanguage)
                }
            }
            Spacer()
            ButtonView(title: "검색",height: 48)
        }
        .padding(.horizontal,16)
        
    }
}

struct SearhOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SearhOptionView()
    }
}



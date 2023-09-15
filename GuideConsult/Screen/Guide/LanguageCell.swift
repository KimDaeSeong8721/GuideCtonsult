//
//  LanguageCell.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/13.
//

import SwiftUI

struct LanguageCell: View {
    
    let language: String
    @Binding var selectedLanguage: String?
    
    var body: some View {
        HStack {
            Text(language)
                .font(.system(size: 16))
                .opacity(0.8)
            
            Spacer()
            if language == selectedLanguage {
                Image(systemName: "checkmark.square.fill")
                    .foregroundColor(.point)
                    .font(.system(size: 24))
                
            } else {
                Image(systemName:"square")
                    .foregroundColor( Color.black.opacity(0.4))
                    .font(.system(size: 24))
                
            }
        }
        .onTapGesture {
            if language == selectedLanguage {
                self.selectedLanguage = nil
            } else {
                self.selectedLanguage = self.language
                
            }
        }
    }
}
//
//struct LanguageCell_Previews: PreviewProvider {
//    @State var a = "프랑스어"
//    static var previews: some View {
//        LanguageCell(language: "프랑스어", selectedLanguage: a)
//    }
//}

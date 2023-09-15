//
//  GuideListCell.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/12.
//

import SwiftUI

struct GuideListCell: View {
    
    var body: some View {
        HStack(spacing: 12) {
            Image("profile")
                .resizable()
                .frame(width: 119,height: 128)
            VStack(alignment: .leading,spacing: 2) {
                Text("Jesscia")
                    .font(.system(size: 20))
                Text("Seoul MyeongDong")
                    .font(.system(size: 16))
                    .opacity(0.6)
                Text("#NTower #Shop #Food")
                    .font(.system(size: 12))
                    .opacity(0.4)
                Text("⭐️ 4.5 (+999) ")
                    .font(.system(size: 12))
                    .opacity(0.4)
                Spacer()
            }
            .padding(.top, 16)
        }
    }
}

struct GuideListCell_Previews: PreviewProvider {
    static var previews: some View {
        
        GuideListCell()
            .frame(height: 128,alignment: .leading)
            .previewLayout(.sizeThatFits)
    }
}

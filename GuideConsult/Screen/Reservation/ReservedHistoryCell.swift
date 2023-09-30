//
//  ReservedHistoryCell.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/30.
//

import SwiftUI

struct ReservedHistoryCell: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("승인 대기")
                    .font(.system(size: 14,weight: .semibold))
                    .foregroundColor(.orange)

                Spacer()
                
                Text("상세 보기 >")
                    .font(.system(size: 12))
            }
            
            Divider()
            
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: 78, height: 78)
                
                VStack(alignment: .leading,spacing: 15) {
                    
                    VStack(alignment: .leading, spacing: .zero) {
                        HStack {
                            Text("DAESEONG KIM")
                                .font(.system(size: 16))

                            Image("koreaFlag")
                                .resizable()
                                .frame(width: 13, height: 13)
                                .overlay(RoundedRectangle(cornerRadius: 6.5)
                                    .stroke(.black.opacity(0.2), lineWidth: 0.2))
                        }
                        
                        Text("대한민국 서울시")
                            .font(.system(size: 14))
                            .foregroundColor(.black).opacity(0.6)

                    }
                    VStack(alignment: .leading, spacing: .zero) {
                        Text("스타벅스 쌍문점")
                            .font(.system(size: 14))
                        Text("2023.09.05 (화) 13:00 ~ 14:00")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(.black).opacity(0.6)
                    
                }
                Spacer()
            }
        }
        .padding(.horizontal,16)
        .padding(.bottom,16)
        .padding(.top,9)

    }
}

struct ReservedHistoryCell_Previews: PreviewProvider {
    static var previews: some View {
        ReservedHistoryCell()
    }
}

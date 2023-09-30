//
//  ButtonView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/12.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    var titleSize: CGFloat = 16
    var height: CGFloat? = 56.0
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                Rectangle()
                    .fill(Color.point)
                    .frame(width: geo.size.width, height: height)
                    .cornerRadius(15)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .semibold))
                    .foregroundColor(.white)
            }
            .frame(minWidth: geo.size.width, maxHeight: height)
        }
        .frame(maxHeight: height)

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "계정 만들기")
    }
}

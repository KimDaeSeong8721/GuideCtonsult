//
//  ReservedHistoryView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/30.
//

import SwiftUI

struct ReservedHistoryView: View {
    var body: some View {
        GeometryReader { geo in
            
            ScrollView {
                ForEach(0 ..< 10) { _ in
                    
                    ReservedHistoryCell()
                        .frame(width: geo.size.width,
                               height: 150,
                               alignment: .leading)
                        .background(.white)
                        .cornerRadius(10)
                        .padding(.top, 8)
                }
                
            }
        }
        .padding(.horizontal, 16)
        .background(Color.backgroundGray)
    }
}

struct ReservedHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        ReservedHistoryView()
    }
}

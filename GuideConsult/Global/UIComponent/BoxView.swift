//
//  BoxView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/14.
//

import SwiftUI

struct BoxView<Content>: View where Content : View {
    let content: () -> Content
    var padding: CGFloat
    init(padding: CGFloat = 8.0, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.padding = padding
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            content()
        }
        .padding(padding)
        .background(.white)
        .cornerRadius(10)
    }
   
}

struct BoxView_Previews: PreviewProvider {
    static var previews: some View {
        BoxView {
            Text("하이")
        }
    }
}

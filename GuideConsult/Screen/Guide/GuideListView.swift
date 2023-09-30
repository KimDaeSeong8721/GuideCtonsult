//
//  GuideListView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/12.
//

import SwiftUI

struct GuideListView: View {
    
    //MARK: - Properites
    @State private var showOptionView: Bool = false
    
    //MARK: - Body
    var body: some View {
//        NavigationView {
            GeometryReader { geo in
                ScrollView {
                    ForEach(0 ..< 10) { _ in
                        NavigationLink {
                            GuideDetailView()
                        } label: {
                            GuideListCell()
                                .frame(width: geo.size.width,
                                       height: 128,
                                       alignment: .leading)
                                .background(.white)
                                .clipped()
                                .cornerRadius(20)
                                .padding(.top, 8)
                        }
                        .foregroundColor(.black)
                    }
                }
            }
            .padding(.horizontal, 16)
            .background(Color.backgroundGray)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                Button {
                    self.showOptionView = true
                } label: {
                    Image("option")
                }
                .fullScreenCover(isPresented: $showOptionView) {
                    SearhOptionView()
                }
            }
                .accentColor(.black)

        }
//    }
}

struct GuideListView_Previews: PreviewProvider {
    static var previews: some View {
        GuideListView()
    }
}

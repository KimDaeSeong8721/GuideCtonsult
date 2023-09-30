//
//  ContentView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        NavigationView {
            TabView {
                GuideListView()
                    .navigationTitle("가이드 찾기")

                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 10)
                    Text("")
                  }

                 Text("Another Tab")
                  .tabItem {
                    Image(systemName: "book.fill")
                    Text("")
                  }
                Text("The Last Tab")
                  .tabItem {
                    Image(systemName: "gear")
                    Text("")
                  }
                  .badge(10)
              }
            .tint(.point)
            .onAppear {
                let tabBarAppearance = UITabBarAppearance()
                tabBarAppearance.configureWithDefaultBackground()
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
        .background(.black)

        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

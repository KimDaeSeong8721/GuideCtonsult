//
//  ContentView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/11.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    @AppStorage("isGuide") var isGuide: Bool = false
    
    let navigationTitles = ["GUIDES","RESERVATION", "SETTINGS"]
    var body: some View {
     
        NavigationView {
            TabView(selection: $selection) {
                
                if !isGuide {
                    GuideListView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.top, 10)
                      }
                    .tag(0)

                     ReservedHistoryView()
                      .tabItem {
                        Image(systemName: "book.fill")
                        Text("")
                      }
                      .tag(1)
                } else {
                    ReservedHistoryView()
                     .tabItem {
                       Image(systemName: "book.fill")
                       Text("")
                     }
                     .tag(1)
                }
                SettingView()
                  .tabItem {
                    Image(systemName: "gear")
                    Text("")
                  }
                  .tag(2)
                  .badge(10)
                
              }
            .tint(.point)
            .onAppear {
                let tabBarAppearance = UITabBarAppearance()
                tabBarAppearance.configureWithDefaultBackground()
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle(navigationTitles[selection])
        }
        .background(.black)

        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

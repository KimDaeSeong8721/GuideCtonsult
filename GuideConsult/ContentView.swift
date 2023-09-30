//
//  ContentView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/11.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
     
        TabView {
            GuideListView()
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("")
              }
              .background()
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
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

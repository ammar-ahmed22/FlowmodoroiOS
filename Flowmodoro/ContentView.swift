//
//  ContentView.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab: Int = 1
    
    var body : some View {
        TabView(selection: $selectedTab){
            WorkView(selectedTab: $selectedTab)
                .tabItem(){
                    Image(systemName: "briefcase.fill")
                    Text("Work")
                }
                .tag(1)
            BreakView(selectedTab: $selectedTab)
                .tabItem(){
                    Image(systemName: "bed.double.fill")
                    Text("Break")
                }
                .tag(2)
        }
//        WorkView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

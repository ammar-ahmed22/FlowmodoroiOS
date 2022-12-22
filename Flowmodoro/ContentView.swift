//
//  ContentView.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab: Int = 1
    @StateObject var env = Environment()
    
    var body : some View {
        ZStack{
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
    //                    Text("Some more text")
                    }
                    .tag(2)
            }
            .environmentObject(env)
            GeometryReader{
                geo in
                VStack(){
                    Spacer()
                    if !env.canBreak{
                        Rectangle()
                            .fill(Color.bg.opacity(0.5))
                            .frame(width: geo.size.width * 0.5, height: 50)
                    }
                }.frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
//        WorkView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

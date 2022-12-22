//
//  BreakView.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import SwiftUI

struct BreakView : View {
    @Binding var selectedTab: Int
    @State private var elapsed: Int = 0
    let localStorage = LocalStorage()
    
    var body: some View{
        ZStack{
            Color.bg
                .ignoresSafeArea()
            VStack{
                Text("Break Mode")
                    .font(.smallTitle)
                    .padding(.bottom)
                    .foregroundColor(.accentColor)
                TimerView(elapsed: elapsed)
                Text("Time elapsed: \(elapsed)s")
//                ControlsView(
//                    isStarted: $isStarted,
//                    isBreak: $isBreak,
//                    resetAction: {
//                        print("Reset pressed")
//                        isStarted = false
//                        timer.upstream.connect().cancel()
//                        elapsed = 0
//                    },
//                    startAction: {
//                        if (isStarted){
//                            timer.upstream.connect().cancel()
//                            isStarted = isStarted ? false : true
//                            return
//                        }
//                        isStarted = isStarted ? false : true
//                        timer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
//                    },
//                    navigateAction: {
//                        print("Break time pressed")
//                        isBreak = isBreak ? false : true
//                    }
//                )
            }
//            .onChange(of: selectedTab){
//                newValue in
//                if newValue == 2{
//                    print("break view appeared")
//                    elapsed = localStorage.readValue(forKey: .workTime) ?? 0
//                }
//            }
            .onAppear{
                print("break view appeared")
                elapsed = localStorage.readValue(forKey: .workTime) ?? 0
            }
//            .onReceive(timer){
//                time in
//                if (isStarted){
//                    elapsed += 1
//                }
//            }
//            .onAppear{
//                timer.upstream.connect().cancel()
//            }
        }
    }
}

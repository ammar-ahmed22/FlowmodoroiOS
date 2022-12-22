//
//  WorkView.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import SwiftUI

struct WorkView : View {
    @Binding var selectedTab: Int
    @EnvironmentObject var env: Environment
    @State private var isStarted: Bool = false
    @State private var elapsed: Int = 0
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    let localStorage = LocalStorage()
    
    func handleReset(){
        print("reset handler brooo")
        isStarted = false
        timer.upstream.connect().cancel()
        elapsed = 0
        env.canBreak = false
    }
    
    func handleStart(){
        print("start handler")
        if (isStarted){
            timer.upstream.connect().cancel()
            isStarted = isStarted ? false : true
            return
        }
        isStarted = isStarted ? false : true
        timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    }
    
    func handleNavigate(){
        print("navigate handler")
        localStorage.saveValue(forKey: .workTime, value: elapsed)
        env.workTime = elapsed
        selectedTab = 2
        // handleReset()
    }
    
    var body: some View {
        ZStack{
            Color.bg
                .ignoresSafeArea()
            VStack{
                Text("Work Mode")
                    .font(.smallTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                    .foregroundColor(.accentColor)
                TimerView(elapsed: elapsed)
                ControlsView(
                    isStarted: isStarted,
                    isBreak: false,
                    canBreak: env.canBreak,
                    resetAction: handleReset,
                    startAction: handleStart,
                    navigateAction: handleNavigate
                )
            }
            .onReceive(timer){
                time in
                if (isStarted){
                    elapsed += 1
                }
                
                if (elapsed >= 10){
                    env.canBreak = true
                }
            }
            .onAppear{
                timer.upstream.connect().cancel()
            }
            .onChange(of: selectedTab){
                newValue in
                if newValue == 2{ // switching to break tab
                    print("switching to break, elapsed: \(elapsed)")
                    localStorage.saveValue(forKey: .workTime, value: elapsed)
                    env.workTime = elapsed
                    handleReset()
                }
            }
        }
    }
}

//struct WorkView_Previews: PreviewProvider {
//    @State testTab:
//    static var previews: some View {
//        WorkView(selectedTab: $1)
//    }
//}

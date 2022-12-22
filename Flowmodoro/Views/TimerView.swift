//
//  Timer.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import SwiftUI

struct TimerView : View {
    var elapsed: Int
    init(elapsed: Int){
        self.elapsed = elapsed
    }
    
    var body : some View {
        HStack(alignment: .bottom, spacing: 0.0){
            VStack{
                Text("Hours")
                    .font(.regular)
                    .fontWeight(.light)
                Text(TimeDisplay(elapsed).hours)
                    .font(.huge)
                    .fontWeight(.bold)
            }
            Text(".")
                .font(.huge)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                
            VStack{
                Text("Minutes")
                    .font(.regular)
                    .fontWeight(.light)
                Text(TimeDisplay(elapsed).minutes)
                    .font(.huge)
                    .fontWeight(.bold)
            }
            Text(".")
                .font(.huge)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
            VStack{
                Text("Seconds")
                    .font(.regular)
                    .fontWeight(.light)
                Text(TimeDisplay(elapsed).seconds)
                    .font(.huge)
                    .fontWeight(.bold)
            }
        }
    }
}

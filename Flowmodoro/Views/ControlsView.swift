//
//  ControlsView.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import SwiftUI

struct ControlsView: View {
    var isStarted: Bool
    var isBreak: Bool
    let resetAction: () -> Void
    let startAction: () -> Void
    let navigateAction: () -> Void
    
    var body: some View {
        HStack(spacing: 40.0){
            Button(
                action: resetAction,
                label: {
                    Image(systemName: "arrow.counterclockwise")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                }
            )
            Button(
                action: startAction,
                label: {
                    Image(systemName: isStarted ? "pause.fill" : "play.fill")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                }
            )
            Button(
                action: navigateAction,
                label: {
                    Image(systemName: isBreak ? "briefcase.fill" : "bed.double.fill")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                }
            )
        }
        .padding(.top, 5.0)
        
    }
}

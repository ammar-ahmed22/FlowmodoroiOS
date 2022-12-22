//
//  Environment.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-22.
//

import SwiftUI

@MainActor class Environment: ObservableObject {
    @Published var workTime: Int
    @Published var canBreak: Bool
    
    init(){
        self.workTime = 0
        self.canBreak = false
    }
}

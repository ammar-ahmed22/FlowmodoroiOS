//
//  TimeDisplay.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import Foundation

struct TimeDisplay{
    let elapsed: Int
    init(_ elapsed: Int){
        self.elapsed = elapsed
    }
    
    func toString(_ val: Int) -> String {
        if val >= 10{
            return "\(val)"
        } else {
            return "0\(val)"
        }
    }
    
    var seconds: String {
        toString(elapsed % 60)
    }
    
    var minutes: String {
        toString(Int(floor(Double(elapsed / 60))) % 60)
    }
    
    var hours: String {
        toString(Int(floor(Double(elapsed / 3600))))
    }
}

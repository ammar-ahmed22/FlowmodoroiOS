//
//  LocalStorage.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import Foundation
import SwiftUI

enum LSKey: String, CaseIterable {
    case workTime, breakStarted
    func value() -> String { self.rawValue }
}

class LocalStorage{
    
    let userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults = .standard){
        self.userDefaults = userDefaults
    }
    
    // MARK: - Methods
    func saveValue(forKey key: LSKey, value: Any){
        userDefaults.set(value, forKey: key.value())
    }
    
    func readValue<T>(forKey key: LSKey) -> T? {
        return userDefaults.value(forKey: key.value()) as? T
    }
    
    func removeValue(forKey key: LSKey){
        userDefaults.removeObject(forKey: key.value())
    }
    
}

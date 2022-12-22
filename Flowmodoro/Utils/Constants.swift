//
//  Constants.swift
//  Flowmodoro
//
//  Created by Ammar Ahmed on 2022-12-20.
//

import SwiftUI

extension Font {
    static let huge = Font.custom("FiraCode-Retina", size: Font.TextStyle.largeTitle.size, relativeTo: .caption)
    static let largeTitle = Font.custom("FiraCode-Retina", size: Font.TextStyle.title.size, relativeTo: .caption)
    static let title = Font.custom("FiraCode-Retina", size: Font.TextStyle.title2.size, relativeTo: .caption)
    static let smallTitle = Font.custom("FiraCode-Retina", size: Font.TextStyle.title3.size, relativeTo: .caption)
    static let regular = Font.custom("FiraCode-Retina", size: Font.TextStyle.headline.size, relativeTo: .caption)
    static let smallerRegular = Font.custom("FiraCode-Retina", size: Font.TextStyle.subheadline.size, relativeTo: .caption)
    static let smallestRegular = Font.custom("FiraCode-Retina", size: Font.TextStyle.footnote.size, relativeTo: .caption)
    static let small = Font.custom("FiraCode-Retina", size: Font.TextStyle.caption.size, relativeTo: .caption)
    static let smaller = Font.custom("FiraCode-Retina", size: Font.TextStyle.caption2.size, relativeTo: .caption)
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 60
        case .title: return 48
        case .title2: return 34
        case .title3: return 24
        case .headline, .body: return 18
        case .subheadline, .callout: return 16
        case .footnote: return 14
        case .caption: return 12
        case .caption2: return 10
        @unknown default:
            return 8
        }
    }
}


extension Color{
    static let bg = Color("background")
    static let brandDarkBlue = Color("brandDarkBlue")
    static let brandLightBlue = Color("brandLightBlue")
}

enum LocalStorageKeys: String {
    case workTime = "workTime"
}

//struct DefaultsKeys{
//    static let workTime = "workTime"
//}

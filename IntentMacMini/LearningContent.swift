//
//  LearningContent.swift
//  IntentMacMini
//
//  Created by lidongyang on 2022/10/31.
//

import Foundation
import AppIntents

enum LearningContent: String {
    case math = "数学"
    case chinese = "语文"
    case english = "英语"
    case swim = "游泳"
}

extension LearningContent: AppEnum {
    static var typeDisplayRepresentation: TypeDisplayRepresentation {
        "Learning Content"
    }

    static var caseDisplayRepresentations: [LearningContent : DisplayRepresentation] {
        [
            .math: "数学",
            .chinese: "语文",
            .english: "英语",
            .swim: "游泳"
        ]
    }
}

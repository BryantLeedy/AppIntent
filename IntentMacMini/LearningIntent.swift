//
//  LearningIntent.swift
//  IntentMacMini
//
//  Created by lidongyang on 2022/10/31.
//

import Foundation
import AppIntents

struct LearningIntent: AppIntent {
    @Parameter(title: "科目")
    var content: LearningContent

    static var parameterSummary: some ParameterSummary {
        Summary("Show a \(\.$content) colored heart")
    }

    static var title: LocalizedStringResource {
        "Learning Content"
    }

    func perform() async throws -> some IntentResult {
        return .result(dialog: IntentDialog(stringLiteral: content.rawValue))
    }
}

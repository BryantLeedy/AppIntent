//
//  LearningTime.swift
//  IntentMacMini
//
//  Created by lidongyang on 2022/10/31.
//

import Foundation
import AppIntents

@available(iOS 16.0, macOS 13.0, watchOS 9.0, tvOS 16.0, *)
struct LearningTime: AppIntent, CustomIntentMigratedAppIntent {
    static let intentClassName = "LearningTimeIntent"

    static var title: LocalizedStringResource = "Learning Time"
    static var description = IntentDescription("学习时间到啦")

    @Parameter(title: "Course", default: "数学")
    var course: String?

    static var parameterSummary: some ParameterSummary {
        Summary("学习时间到啦") {
            \.$course
        }
    }

    enum CustomDialog {
        case courseParameterPrompt
        case courseParameterDisambiguationIntro(Int, String)
        case courseParameterConfirmation(String)

        var asDialog: IntentDialog {
            switch self {
                case .courseParameterPrompt:
                    return IntentDialog("要学习什么科目呢？")
                case .courseParameterDisambiguationIntro(let count, let course):
                    return IntentDialog("There are \(count) options matching ‘\(course)’.")
                case .courseParameterConfirmation(let course):
                    return IntentDialog("Just to confirm, you wanted ‘\(course)’?")
            }
        }
    }

    func perform() async throws -> some IntentResult {
        // TODO: Place your refactored intent handler code here.
        return .result(dialog: CustomDialog.courseParameterPrompt.asDialog)
    }
}


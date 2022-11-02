//
//  GradeOfEachSubjectIntent.swift
//  IntentMacMini
//
//  Created by lidongyang on 2022/10/31.
//

import Foundation
import AppIntents

struct GradeOfEachSubjectIntent: AppIntent {

    @Parameter(title: "要查哪门课呢")
    var grade: GradesEntity

    static var parameterSummary: some ParameterSummary {
        Summary("你想查哪一科的成绩 \(\.$grade)")
    }

    static var title: LocalizedStringResource {
        "查成绩小工具"
    }

    func perform() async throws -> some IntentResult {

        return .result(dialog: IntentDialog(stringLiteral: "大哥你真考了这么多 😅"),
                       view: GradeView(entity: grade))
    }
}

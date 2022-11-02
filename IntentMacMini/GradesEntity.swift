//
//  GradesEntity.swift
//  IntentMacMini
//
//  Created by lidongyang on 2022/10/31.
//

import Foundation
import AppIntents

struct GradesEntity: AppEntity {
    static var defaultQuery = GradeQuery()

    var grade: GradeInfo

    var id: String {
        return grade.id
    }

    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Grade"

    var displayRepresentation: DisplayRepresentation {
        return DisplayRepresentation(stringLiteral: grade.subject)
    }

}

struct GradeQuery: EntityQuery {
    func entities(for identifiers: [String]) async throws -> [GradesEntity] {
        var grades: [GradesEntity] = []
        _ = identifiers.compactMap { id in
            if let grade = GradeDefault.gradeId(for: id) {
                grades.append(GradesEntity(grade: grade))
            }
        }
        return grades
    }

    func suggestedEntities() async throws -> [GradesEntity] {
        GradeDefault.suggestedEntries().map { grade in
            GradesEntity(grade: grade)
        }
    }
}

struct GradeDefault {
    private static var grades: [GradeInfo] {
        [
            .init(subject: "数学", id: "1", grade: 70, rank: 22),
            .init(subject: "语文", id: "2", grade: 75, rank: 33),
            .init(subject: "英语", id: "3", grade: 80, rank: 11)
        ]
    }

    static func gradeId(for id: String) -> GradeInfo? {
        return grades.first(where: {$0.id == id })
    }

    static func getGrade(with subject: String) -> GradeInfo? {
        return grades.first(where: {$0.subject == subject })
    }

    static func icon(for id: String) -> String? {
        switch id {
        case "1":
            return "Math"
        case "2":
            return "Chinese"
        case "3":
            return "English"
        default:
            return nil
        }
    }

    static func suggestedEntries() -> [GradeInfo] {
        return grades
    }
}

class GradeInfo {
    var subject: String
    var id: String
    var grade: Double
    var rank: Int

    init(subject: String, id: String, grade: Double, rank: Int) {
        self.subject = subject
        self.id = id
        self.grade = grade
        self.rank = rank
    }
}

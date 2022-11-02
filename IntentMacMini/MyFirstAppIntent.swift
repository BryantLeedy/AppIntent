//
//  MyFirstAppIntent.swift
//  MyApp
//
//

import AppIntents

struct MyFirstAppIntent: AppIntent {
    static var title: LocalizedStringResource {
        "My first intent"
    }
    
    func perform() async throws -> some IntentResult {
        return .result(dialog: "Hi, mom! 👋")
    }
}

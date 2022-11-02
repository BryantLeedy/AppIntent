//
//  AppShortcuts.swift
//  MyApp
//
//  Created by Tomas Martins on 25/09/22.
//

import AppIntents

struct AppShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: LearningTime(),
            phrases: [
                "学习时间到了 \(.applicationName)"
            ]
        )
        AppShortcut(
            intent: GradeOfEachSubjectIntent(),
            phrases: [
                "测试一下\(.applicationName)",
                "查一下\(\.$grade)成绩\(.applicationName)"
            ]
        )
//        AppShortcut(
//            intent: MyFirstAppIntent(),
//            phrases: [
//                "Say hi with \(.applicationName)",
//                "Tell mom I said hi with \(.applicationName)"
//            ]
//        )
//        AppShortcut(
//            intent: GreetingIntent(),
//            phrases: [
//                "Greet with \(.applicationName)",
//                "Say hello with \(.applicationName)"
//            ]
//        )
//        AppShortcut(
//            intent: ColoredHeartIntent(),
//            phrases: [
//                "Show me a colorful heart with \(.applicationName)",
//                "Show me a heart with \(.applicationName)",
////                "Show me a \(\.$color) heart with \(.applicationName)",
////                "Show me a \(\.$color) heart"
//            ]
//        )
//        AppShortcut(
//            intent: WalletPositionIntent(),
//            phrases: [
//                "Show my current position with \(.applicationName)",
//                "Show my current position for \(\.$asset) with \(.applicationName)"
//            ]
//        )
    }
}

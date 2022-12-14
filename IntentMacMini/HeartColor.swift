//
//  HeartColor.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import AppIntents

enum HeartColor: String {
    case red = "โค๏ธ"
    case blue = "๐"
    case yellow = "๐"
    case orange = "๐งก"
    case green = "๐"
    case black = "๐ค"
    case white = "๐ค"
    case brown = "๐ค"
}

extension HeartColor: AppEnum {
    static var typeDisplayRepresentation: TypeDisplayRepresentation {
        "Heart color"
    }
    
    static var caseDisplayRepresentations: [HeartColor : DisplayRepresentation] {
        [
            .red: "Red",
            .blue: "Blue",
            .yellow: "Yellow",
            .orange: "Orange",
            .green: "Green",
            .black: "Black",
            .white: "White",
            .brown: "Brown",
        ]
    }
}

//
//  GradeView.swift
//  IntentMacMini
//
//  Created by lidongyang on 2022/10/31.
//

import Foundation
import SwiftUI

struct GradeView: View {
    var entity: GradesEntity

    var body: some View {
        HStack {
            if let icon = GradeDefault.icon(for: entity.grade.id) {
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:80)
            }
            Spacer()
            Text("成绩：\(String(format: "%.2f", entity.grade.grade))")
                    .font(.system(.title2,
                              design: .rounded))
                    .bold()
            Text("排名：\(entity.grade.rank)")
                .bold()
                .font(.system(.title2,
                              design: .rounded))
            Image(systemName: "chart.line.uptrend.xyaxis")
                .foregroundColor(.green)
                .bold()
        }.padding()
    }
}

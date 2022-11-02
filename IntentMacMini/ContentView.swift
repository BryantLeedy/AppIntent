//
//  ContentView.swift
//  IntentMacMini
//
//  Created by lidongyang on 2022/10/31.
//

import SwiftUI
import AppIntents

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            ShortcutsLink()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

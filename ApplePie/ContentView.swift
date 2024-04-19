//
//  ContentView.swift
//  ApplePie
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TreeView()
            Keyboard()
            Text("Label")
                .font(.largeTitle)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}

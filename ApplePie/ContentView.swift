//
//  ContentView.swift
//  ApplePie
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: GameModel
    @State private var correctWordLabel = "Label"
    var body: some View {
        VStack {
            TreeView(shouldAnimate1: $model.shouldAnimate1)
            Keyboard()
            Text(model.correctWordLabel)
                .font(.largeTitle)
        }
        .padding()
        .onAppear {
            model.newRound()
        }
    }
}

#Preview {
    ContentView().environmentObject(GameModel())
}

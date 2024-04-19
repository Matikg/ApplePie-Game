//
//  ContentView.swift
//  ApplePie
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: GameModel
    
    var body: some View {
        VStack {
            TreeView()
            Keyboard()
            Text("Label")
                .font(.largeTitle)
        }
        .padding()
        .onAppear {
            model.newRound()
            print(model.currentGame.word)
        }
    }
}

#Preview {
    ContentView().environmentObject(GameModel())
}

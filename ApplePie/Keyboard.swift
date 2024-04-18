//
//  Keyboard.swift
//  ApplePie
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

struct Keyboard: View {
    
    let topRow: [String] = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
    let middleRow: [String] = ["A", "S", "D", "F", "G", "H", "J", "K", "L"]
    let bottomRow: [String] = ["Z", "X", "C", "V", "B", "N", "M"]
    
    var body: some View {
        VStack(spacing: 10) {
            RowView(row: topRow)
            RowView(row: middleRow)
            RowView(row: bottomRow)
        }
    }
}

#Preview {
    Keyboard()
}

struct RowView: View {
    
    let row: [String]
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(row, id: \.self) { letter in
                Button(action: {
                    // Action here
                }, label: {
                    Text(letter)
                })
                .font(.title)
                .buttonStyle(.bordered)
                .tint(.purple)
                .padding(1)
            }
        }
    }
}
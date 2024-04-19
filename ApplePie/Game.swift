//
//  Game.swift
//  ApplePie
//
//  Created by Mateusz Grudzień on 19/04/2024.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [String]
    
    mutating func playerGuessed(letter: String) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
        print(incorrectMovesRemaining)
        print(guessedLetters)
    }
}

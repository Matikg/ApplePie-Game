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
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(String(letter)) {
                guessedWord += "\(letter)"
                
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: String) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
        print(incorrectMovesRemaining)
        print(guessedLetters)
    }
}

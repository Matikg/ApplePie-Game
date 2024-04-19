//
//  GameModel.swift
//  ApplePie
//
//  Created by Mateusz Grudzień on 19/04/2024.
//

import Foundation

class GameModel: ObservableObject {
    var currentGame: Game!
    var listOfWords = ["buccaneer", "swift", "glorious"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [String]())
    }
    
    
}

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
    
    @Published var correctWordLabel = "Label"
    
    func newRound() {
        
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [String]())
        updateUI()
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
         }
        correctWordLabel = letters.joined(separator: " ")
        
    }
    
    
}

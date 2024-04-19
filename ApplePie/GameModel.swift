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
    var disabledButtons = [String]()
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
    @Published var correctWordLabel = "Label"
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [String]())
        updateUI()
        disabledButtons.removeAll()
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
         }
        correctWordLabel = letters.joined(separator: " ")
    }
    
    func disableButton(buttonLabel: String) {
        disabledButtons.append(buttonLabel)
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
            
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }

}

import SwiftUI

struct ContentView: View {
    @State private var wordToGuess = "CAT"
    @State private var guessedWord = "___"
    @State private var attemptsRemaining = 3
    @State private var gameover = false
    
    var body: some View {
        VStack {
            Text("Hang Sedat")
                .font(.largeTitle)
            
            Text("Word to Guess: \(guessedWord)")
                .font(.title)
            
            Text("Attempts Remaining: \(attemptsRemaining)")
            
            if gameover {
                Text("Sedat dies")
            } else {
                TextField("Enter a letter", text: $wordToGuess)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Guess") {
                    if wordToGuess.count == 1 {
                        let letter = wordToGuess.uppercased().first! //UPPERCASED string işte of nil
                        if wordToGuess.uppercased() == wordToGuess {
                            if wordToGuess == "C" {
                                guessedWord = "C__"
                            } else if wordToGuess == "A" {
                                guessedWord = "_A_"
                            } else if wordToGuess == "T" {
                                guessedWord = "__T"
                            } else {
                                attemptsRemaining -= 1
                            }
                        } else {
                            attemptsRemaining -= 1
                        }
                    }
                    wordToGuess = ""
                    
                    if attemptsRemaining == 0 {
                        gameover = true
                    }
                }
            }
        }
    }
}


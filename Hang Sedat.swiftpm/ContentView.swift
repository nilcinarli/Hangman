import SwiftUI

struct ContentView: View {
    @State private var wordreal = "CAT"
    @State private var space = "___"
    @State private var live = 3
    @State private var gameover = false
    
    var body: some View {
        VStack {
            Text("Hang Sedat")
                .font(.largeTitle)
            
            Text("Word to Guess: \(space)")
                .font(.title)
            
            Text("Lives Remaining: \(Live)")
            
            if gameover {
                Text("Sedat dies")
            } else {
                TextField("Enter a letter", text: $wordreals)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Guess") {
                    if wordreal.count == 1 {
                        let letter = wordreal.uppercased().first! //UPPERCASED string işte of nil
                        if wordreal.uppercased() == wordreal {
                            if wordreal == "C" {
                                space = "C__"
                            } else if wordreal == "A" {
                                space = "_A_"
                            } else if wordreal == "T" {
                                space = "__T"
                            } else {
                                Live -= 1
                            }
                        } else {
                            Live -= 1
                        }
                    }
                    wordreal = ""
                    
                    if Live == 0 {
                        gameover = true
                    }
                }
            }
        }
    }
}


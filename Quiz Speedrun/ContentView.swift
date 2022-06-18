//
//  ContentView.swift
//  Quiz Speedrun
//
//  Created by YJ Soon on 16/6/22.
//

import SwiftUI

struct ContentView: View {
    
    let questions = [
        QuizQuestion(title: "What is the day today?", option1: "Monday", option2: "Tuesday", option3: "Wednesday", option4: "Thursday"),
        QuizQuestion(title: "Who is your instructor", option1: "ZJ", option2: "XZ", option3: "AB", option4: "YJ"),
        QuizQuestion(title: "Where are we having lessons?", option1: "Banana", option2: "Orange", option3: "Pineapple", option4: "Apple")
    ]
    
    @State var questionIndex = 0
    @State var isAlertShown = false
    @State var isCorrect = true
    @State var score = 0
    @State var isSheetShown = false
    
    fileprivate func QuizButton(_ label: String, color: Color) -> some View {
        Text(label)
            .padding()
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
    
    var body: some View {
        VStack {
            Text(questions[questionIndex].title)
                .padding(40)
            HStack {
                Button {
                    isAlertShown = true
                    isCorrect = false
                } label: {
                    QuizButton(questions[questionIndex].option1, color: .red)
                }
                Button {
                    isAlertShown = true
                    isCorrect = false
                } label: {
                    QuizButton(questions[questionIndex].option2, color: .blue)
                }
            }
            HStack {
                Button {
                    isAlertShown = true
                    isCorrect = false
                } label: {
                    QuizButton(questions[questionIndex].option3, color: .green)
                }
                Button {
                    isAlertShown = true
                    isCorrect = true
                    score += 1
                } label: {
                    QuizButton(questions[questionIndex].option4, color: .yellow)
                }
            }
        }
        .alert(isCorrect ? "Well done!" : "You're bad",
               isPresented: $isAlertShown) {
            Button("OK") {
                if questionIndex == questions.count - 1 {
                    isSheetShown = true
                } else {
                    questionIndex += 1
                }
            }
        }
       .sheet(isPresented: $isSheetShown) {
           Text("Your score is \(score)/\(questions.count)")
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

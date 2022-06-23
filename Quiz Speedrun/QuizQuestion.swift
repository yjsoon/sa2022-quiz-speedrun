//
//  QuizQuestion.swift
//  Quiz Speedrun
//
//  Created by YJ Soon on 16/6/22.
//

import Foundation

enum OptionChoice {
    case option1, option2, option3, option4
}

struct QuizQuestion {
    
    var title: String
    
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    
    var correctOption: OptionChoice
    
}

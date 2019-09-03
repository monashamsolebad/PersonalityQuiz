//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Mona Shamsolebad on 2019-08-27.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

import Foundation
enum Responsetype {
    
    case single , multiple , ranged
}
struct Question {
    var text : String
    var type : Responsetype
    var answers : [Answer]
}
struct Answer {
    var text : String
    var type : AnimalType
}
enum AnimalType : Character{
    case dog = "🐶" , cat = "😸" ,rabbit = "🐰" , turtle = "🐢"
    var definition : String {
        switch self {
        case .dog:
            return "You are incredibly outgoing."
        case .cat:
            return "Mischievous, yet mild-tempered"
        case .rabbit:
            return "You love everything that is soft."
        case .turtle:
            return "You are wise beyond your years."
        }
    }
}


//
//  Question.swift
//  PersonalityQuiz-5oct23
//
//  Created by Rukshi Chauhan on 05/10/23.
//

import Foundation

struct Question {
    var text:String
    var type:ResponseType
    var answers:[Answer]
}

enum ResponseType {
case single, multiple, ranged
}

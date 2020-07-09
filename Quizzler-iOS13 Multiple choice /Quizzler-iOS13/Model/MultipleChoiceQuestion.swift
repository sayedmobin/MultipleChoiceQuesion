//
//  MultipleChoiceQuestion.swift
//  Quizzler-iOS13
//
//  Created by Sayed Mobin Sadat on 7/1/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct MultipleChoiceQuestion {
    let text: String
    let answer: String
    let choice: Array<String>
    
    
    init(q: String, a: String, c: Array<String>) {
        text = q
        answer = a
        choice = c
    }
}

//
//  Question.swift
//  Quizzler
//
//  Created by Utku Kaan Gülsoy on 31.08.2022.
//

import Foundation

struct Question{
    let text: String
    let answer: String
    
    init(q: String, a: String)
    {
        text = q
        answer = a
    }
}

//
//  ViewController.swift
//  Quizzler
//
//  Created by Utku Kaan Gülsoy on 31.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        Question(q: "Capital city of Turkey is Ankara", a: "True"),
        Question(q: "Four + three is equal to six", a: "False"),
        Question(q: "Five - two is greater than one", a: "True")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer
        {
            sender.backgroundColor = UIColor.green
            
        }
        else
        {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber+1 < quiz.count
        {
            questionNumber += 1
        }
        else
        {
            questionNumber = 0
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func updateUI()
    {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber+1)/Float(quiz.count)
     
    }
    
}


//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Mona Shamsolebad on 2019-08-26.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var responses : [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }
    
    @IBOutlet var resultAnswerLabel: UILabel!
    
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    
    func calculatePersonalityResult(){
        
        var frequencyOfAnswers : [AnimalType: Int] = [:]
        let responseType = responses.map {$0.type}
        for response in responseType {
            let newCount : Int
            if let oldCount = frequencyOfAnswers[response] {
                newCount = oldCount + 1
                
            }
            else {
                newCount = 1
                
            }
             frequencyOfAnswers[response] = newCount
        }
       
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }

}

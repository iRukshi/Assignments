//
//  ResultsViewController.swift
//  PersonalityQuiz-5oct23
//
//  Created by Rukshi Chauhan on 05/10/23.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    var responses: [Answer]
    
    init?(coder: NSCoder, responses:[Answer]) {
        self.responses = responses
        super.init(coder: coder) // coder param will be used by uikit to initialize your view controller from the information defined in your storyboard
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        calculatePersonalityTest()
    }
    
    func calculatePersonalityTest(){
        let frequencyOfAnswers = responses.reduce(into: [:]) { counts, answer in //trailing closure
            counts[answer.type, default: 0] += 1
        }
        
        //OR
        
      /*
       let frequencyOfAnswers = responses.reduce(into: [AnimalType:Int]()) { counts, answer in
            if let existingCount = counts[answer.type]{
                counts[answer.type] = existingCount + 1
            }
            else {
                counts[answer.type] = 1
            }
        }
       */
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted { pair1, pair2 in
            return pair1.value >  pair2.value
        }
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        //OR trailing closure
      //  let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
      
    }

}

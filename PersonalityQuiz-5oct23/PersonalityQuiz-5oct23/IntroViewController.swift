//
//  ViewController.swift
//  PersonalityQuiz-5oct23
//
//  Created by Rukshi Chauhan on 05/10/23.
//

import UIKit

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToQuizIntroduction(segue:UIStoryboardSegue){ // when player taps on Done button , the unwind segue dismiss all viewcontrollers that were created after IntroVC
        
        // no method implementation - since app doesn't need to retain or passback any info when ResultVC dismiss
    }


}


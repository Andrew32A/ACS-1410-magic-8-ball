//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Andrew Alsing on 4/4/23.
//

import UIKit

class ViewController: UIViewController {
    var answers: [String] = []
    
    let magicBall = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    let test = ["hello", "world"]
    
    let coinFlip = ["heads", "tails"]

    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    

    @IBAction func uibutton(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateAnswer()
    }
    
    func generateAnswer() {
        print(segment.selectedSegmentIndex)
        
        if segment.selectedSegmentIndex == 0 {
            answers = magicBall
        } else if segment.selectedSegmentIndex == 1 {
            answers = test
        } else if segment.selectedSegmentIndex == 2 {
            answers = coinFlip
        }
        
        let randomIndex = Int.random(in: 0..<answers.count)
        
        label.text = answers[randomIndex]

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


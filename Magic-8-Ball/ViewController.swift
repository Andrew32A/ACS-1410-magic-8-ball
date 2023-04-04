//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Andrew Alsing on 4/4/23.
//

import UIKit

class ViewController: UIViewController {
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]

    @IBOutlet weak var label: UILabel!
    

    @IBAction func uibutton(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateAnswer()
    }
    
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)

        label.text = answers[randomIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


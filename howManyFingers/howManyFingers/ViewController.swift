//
//  ViewController.swift
//  howManyFingers
//
//  Created by Revant Kantamneni on 12/30/18.
//  Copyright © 2018 Revant Kantamneni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var rightOrWrong: UILabel!
    
    @IBAction func guessButtong(_ sender: Any) {
        let realNum = String(arc4random_uniform(11))
        let userInput2 = userInput.text
        if userInput2 == realNum {
            rightOrWrong.text = "Your Guess is Correct."
        }
        else {
            rightOrWrong.text = "Wrong! It was \(realNum)."
        }
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


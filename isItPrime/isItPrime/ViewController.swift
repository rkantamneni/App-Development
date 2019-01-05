//
//  ViewController.swift
//  isItPrime
//
//  Created by Revant Kantamneni on 12/30/18.
//  Copyright © 2018 Revant Kantamneni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var primeInput: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    //5
    @IBAction func submit(_ sender: Any) {
        if let userPrime = primeInput.text{
            let userPrime = Int(userPrime)
            if let number = userPrime {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < number {
                    if number % i == 0{
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime==false{
                     resultLabel.text = "\(number) is Not Prime"
                }
                else {
                     resultLabel.text = "\(number) is Prime"
                }
            }
            else {
                resultLabel.text = "Please Enter a Positive Whole Number"
            }
        }
        
        
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


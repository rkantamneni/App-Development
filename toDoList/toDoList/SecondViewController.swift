//
//  SecondViewController.swift
//  toDoList
//
//  Created by Revant Kantamneni on 1/2/19.
//  Copyright © 2019 Revant Kantamneni. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var addItemInput: UITextField!
    
    
    
    var list = [String]()
    
    @IBAction func addItemButton(_ sender: Any) {
        if addItemInput.text != nil {
            list.append(addItemInput.text!)
            UserDefaults.standard.set(addItemInput.text, forKey: "\(list.count)")
            UserDefaults.standard.set(list, forKey: "list")
            UserDefaults.standard.set(list.count, forKey: "listlength")
            
            addItemInput.text = ""
        }
        
        
        
        
        
    }
    
    //Keyboard Close Functions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if UserDefaults.standard.object(forKey: "list") != nil {
            list = UserDefaults.standard.object(forKey: "list") as! [String]
        }
    }


}


//
//  ViewController.swift
//  numberTable
//
//  Created by Revant Kantamneni on 1/1/19.
//  Copyright © 2019 Revant Kantamneni. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let numbers = 50
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var i = 0
        while i <= numbers {
            i+=1
        }
        return numbers
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "PCell")
        
        cell.textLabel?.text = String(indexPath.row+1)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


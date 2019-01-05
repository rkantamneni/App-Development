//
//  ViewController.swift
//  timesTable
//
//  Created by Revant Kantamneni on 1/1/19.
//  Copyright © 2019 Revant Kantamneni. All rights reserved.
//20 times table, then 50 for each

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "\(Int(slider.value)) X \(indexPath.row+1) = \(Int(slider.value) * (indexPath.row+1))"
        
        return cell
    }
    
    
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderTable(_ sender: Any) {
        table.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


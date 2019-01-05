//
//  FirstViewController.swift
//  toDoList
//
//  Created by Revant Kantamneni on 1/2/19.
//  Copyright © 2019 Revant Kantamneni. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var table: UITableView!
    
    
    //Stubs
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let listLength = UserDefaults.standard.object(forKey: "listlength")
        if let listL = listLength as? Int {
            return listL
            
        }
        else {
            return 0
        }
    }
    
    func resetDefaults() {
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
    }
    
    //5 items
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        let cellArray = UserDefaults.standard.object(forKey: "list")
        if cellArray != nil {
            if let ca = cellArray as? Array<Any>{
                cell.textLabel!.text = ca[indexPath.row] as? String
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let cellArray = UserDefaults.standard.object(forKey: "list")
            if cellArray != nil {
                if var ca = cellArray as? Array<Any>{
                    ca.remove(at: indexPath.row)
                    UserDefaults.standard.set(ca, forKey: "list")
                    UserDefaults.standard.set(ca
                        .count, forKey: "listlength")
                    table.reloadData()
                    
                }
            }
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        table.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //resetDefaults()
        table.reloadData()
    }


}


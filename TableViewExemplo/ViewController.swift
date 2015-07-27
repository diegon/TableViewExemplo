//
//  ViewController.swift
//  TableViewExemplo
//
//  Created by Diego Negrelli on 26/07/15.
//  Copyright (c) 2015 Diego Negrelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var frutas = ["Abacaxi", "Abacate", "Tomate", "Maca", "Pera", "Uva", "Kiwi", "Banana", "Laranja","Abacaxi", "Abacate", "Tomate", "Maca", "Pera", "Uva", "Kiwi", "Banana", "Laranja","Abacaxi", "Abacate", "Tomate", "Maca", "Pera", "Uva", "Kiwi", "Banana", "Laranja"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell
        
        cell.lblDesc.text = frutas[indexPath.row]
        cell.lblNum.text = String(indexPath.row + 1)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frutas.count
    }

}


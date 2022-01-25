//
//  ViewController.swift
//  DrinksApp
//
//  Created by Thomas Garayua on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let names = [
        "John Smith",
        "Dan Smith",
        "Jason Smith",
        "Mary Smith",
        "Thomas Garayua",
        "Jimmy McBride",
        "Sage Han",
        "Logan Prunty"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    
    // this function detects if you tapped a row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
    
}

extension ViewController: UITableViewDataSource {
    
    // This function returns the number of rows the tableView shows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    // This function returns the information that is in the cell with the identifier of "cell"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // indexPath represents the postion in the table. A table is comprised of sections and rows. n number of sections and n number of rows. by default n = 1
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
}



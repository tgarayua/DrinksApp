//
//  ViewController.swift
//  DrinksApp
//
//  Created by Thomas Garayua on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let apiService = APIService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // runs the api call
        apiService.parse()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    // This function returns the number of rows the tableView shows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    // This function returns the information that is in the cell with the identifier of "cell"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "drinkCell") as! DrinksTVC
        
        //This is for when we have the access to the drinks
//        let drink = drinks[indexPath.row]
        
        // indexPath represents the postion in the table. A table is comprised of sections and rows. n number of sections and n number of rows. by default n = 1
        
//        cell.drinkLbl.text = drink
//        cell.DrinkImgView.image = UIImage(named:drink)
        
        
        return cell
    }
    
}



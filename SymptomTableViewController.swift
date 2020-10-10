//
//  SymptomTableViewController.swift
//  Treatably
//
//  Created by Safa Jemai on 09/10/2020.
//  Copyright © 2020 Treatably. All rights reserved.
// this class is to help the user choose the symptoms that he has throgh a search bar 

import UIKit

class SymptomTableViewController: UITableViewController, UISearchBarDelegate {
//create array of data for symptoms
    let data = ["Hair loss", "Neck swelling", "Cold hands and feet", "Painful swallowing", "Cold and flu", "Allergies", "Hives", "Menstruation", "Excessive sweating", "Heart palpitations", "Shaky hands", "Muscle pain", "Sleep ", "Energy", "Digestion", "Headache", "Brittle nails", "Heart symptoms"]
    var filteredData: [String]!
    
    
    //define search bar
    @IBOutlet weak var searchbar: UISearchBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //include the search bar method
        searchbar.delegate = self
        filteredData = data
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        // we can divide them into sections according to first letter
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.text = data[indexPath.row]
        
        
        return cell
    }

    //search bar config
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        //if i delete the data from my search bar
        if searchText == "" {
            filteredData = data
        }
        else {
        
        for symp in data {
            if symp.lowercased().contains(searchText.lowercased()){
                filteredData.append(symp)
            }
        }
        }
        self.tableView.reloadData()
    }
    


   

}

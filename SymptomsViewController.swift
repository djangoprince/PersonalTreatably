//
//  SymptomsViewController.swift
//  Treatably
//
//  Created by Safa Jemai on 05/10/2020.
//  Copyright © 2020 Treatably. All rights reserved.
//

import UIKit

class SymptomsViewController: UIViewController, UISearchBarDelegate {
    //create a search bar
    let data = ["Muscle pain", "Flu and Cold", "hatchimoto"]
    let searchController = UISearchController(searchResultsController: nil
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
    }
    
    func searchBar (searchBar:UISearchBar, textDidChange searchText: String ){
        print(searchText)
        
    }
    
    

}

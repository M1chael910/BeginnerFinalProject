//
//  AllCategoriesVC.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import UIKit

class AllCategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var categoriesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesTableView.delegate = self
        categoriesTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func infoBtnPressed(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "InfoVC", sender: self)
    }
    
    @IBAction func unwindToCategories(unwindSegue: UIStoryboardSegue) {
        
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    }
    


}

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
    }
    @IBAction func infoBtnPressed(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "InfoVC", sender: self)
    }
    
    @IBAction func unwindToCategories(unwindSegue: UIStoryboardSegue) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 122.5
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "SpecificCategoryVC", sender: category)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let specificCategoryVC = segue.destination as? SpecificCategoryVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            specificCategoryVC.initProducts(category: sender as! Category)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
        let category = DataService.instance.getCategories()[indexPath.row]
        cell.updateViews(category: category)
        return cell
        }
        return CategoryCell()
    }
    
}

//
//  ViewController.swift
//  BeginnerFinalProject

//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import UIKit

class AppInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func backToAppBtnPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "AllCategoriesVC", sender: self)
    }
    
}


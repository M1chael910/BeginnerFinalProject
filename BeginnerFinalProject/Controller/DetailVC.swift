//
//  DetailVC.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var currentProduct: Product!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productDescriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProduct()
    }
    
    func setupProduct() {
        productImageView.image = UIImage(named: currentProduct.imageName)
        productDescriptionTextView.text  = currentProduct.description
        productDescriptionTextView.backgroundColor = .clear
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

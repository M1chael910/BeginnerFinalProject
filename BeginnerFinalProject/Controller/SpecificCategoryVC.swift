//
//  SpecificCategoryVC.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import UIKit

class SpecificCategoryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var campingGearLbl: UILabel!
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.backgroundColor = .clear
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
    }
    func initProducts(category: Category) {
      products = DataService.instance.getProducts(forCategoryTitle: category.title)
      navigationItem.title = category.title
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            if products.count != 0 {
                let product = products[indexPath.row]
                productCell.updateView(product: product)
                return productCell
            } else {
                collectionView.isHidden = true
            }
    }
        return ProductCell()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = products[indexPath.row]
        performSegue(withIdentifier: "DetailVC", sender: product)
    }


    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailVC {
            destination.currentProduct = sender as? Product
        }
    }
 

}

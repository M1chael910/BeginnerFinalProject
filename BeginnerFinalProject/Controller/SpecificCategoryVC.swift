//
//  SpecificCategoryVC.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import UIKit

class SpecificCategoryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.backgroundColor = .clear
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            return productCell
        }
        return ProductCell()
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

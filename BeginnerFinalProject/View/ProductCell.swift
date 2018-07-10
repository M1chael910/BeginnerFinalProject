//
//  ProductCell.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 7/2/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import UIKit

@IBDesignable

class ProductCell: UICollectionViewCell {
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        setupProductCell()
    }
    
    override func prepareForInterfaceBuilder() {
        setupProductCell()
    }
    
    
    func updateView(product: Product) {
        productImage.image = UIImage(named: product.imageName)
    }
    
    func setupProductCell() {
        layer.cornerRadius = 10.0
        backgroundColor = .white
    }
    
}

//
//  CategoryCell.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }
    
}

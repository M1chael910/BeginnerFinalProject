//
//  Product.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var description: String
    
    init(title: String, imageName: String, description: String) {
        self.description = description
        self.title = title
        self.imageName = imageName
    }
}


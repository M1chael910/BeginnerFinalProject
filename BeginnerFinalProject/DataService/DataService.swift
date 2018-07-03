//
//  DataService.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//


import Foundation

class DataService {
    static let instance = DataService()
    
    
    private let categories = [
        Category(title: "HIKING", imageName: "hikingBG"),
        Category(title: "CAMPING", imageName: "campingBG"),
        Category(title: "DIVING", imageName: "divingBG"),
        Category(title: "RV LIFE", imageName: "rvBG"),
        Category(title: "FISHING", imageName: "fishingBG"),
        Category(title: "BACKPACKS", imageName: "backpackingBG")
    ]

    private let campingGear = [
        Product(title: "Sleeping Bag", imageName: "sleepingBag", description: "its a sleeping bag man"),
        Product(title: "<#T##String#>", imageName: "<#T##String#>", description: "")
    
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
}

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

    private let camping = [
        Product(title: "Sleeping Bag", imageName: "sleepingBag", description: "its a sleeping bag man"),
        Product(title: "", imageName: "foodCooler", description: ""),
        Product(title: "", imageName: "", description: "")
    ]
    
    private let example: [Product] = [
    Product(title: "", imageName: "", description: "")
    ]
    private let example1: [Product] = [
        Product(title: "", imageName: "", description: "")
    ]
    private let example2: [Product] = [
        Product(title: "", imageName: "", description: "")
    ]
    private let example3: [Product] = [
        Product(title: "", imageName: "", description: "")
    ]
    private let example4: [Product] = [
        Product(title: "", imageName: "", description: "")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "CAMPING":
            return getCampingGear()
        case "HIKING":
            return getExample()
        case "DIVING":
            return getExample1()
        case "RV LIFE":
            return getExample2()
        case "FISHING":
            return getExample3()
        case "BACKPACKS":
            return getExample4()
        default:
            return getCampingGear()
        }
    }
    func getCampingGear() -> [Product] {
        return camping
    }
    
    func getExample() -> [Product] {
        return example
    }
    func getExample1() -> [Product] {
        return example1
    }
    
    func getExample2() -> [Product] {
        return example2
    }
    func getExample3() -> [Product] {
        return example3
    }
    func getExample4() -> [Product] {
        return example4
    }
    
    
}

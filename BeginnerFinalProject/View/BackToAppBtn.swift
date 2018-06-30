//
//  BackToAppBtn.swift
//  BeginnerFinalProject
//
//  Created by Michael  Murphy on 6/29/18.
//  Copyright © 2018 Michael  Murphy. All rights reserved.
//

import UIKit

@IBDesignable

class BackToAppBtn: UIButton {
    
    override func prepareForInterfaceBuilder() {
        SetupBtn()
    }
    
    override func awakeFromNib() {
        SetupBtn()
    }
    
    fileprivate func SetupBtn() {
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setTitle("BACK TO THE APP", for: .normal)
        layer.cornerRadius = 10.0
        tintColor = UIColor.white
    }
}

//
//  HighOrderFuncViewController.swift
//  Demos
//
//  Created by Kritika Middha on 14/02/19.
//  Copyright © 2019 ranosys. All rights reserved.
//

import UIKit

class HighOrderFuncViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var red: String? = "Red"
        red = nil // error: nil cannot be assigned to type 'String'

        compactMap()
        
    }
    
    func compactMap() {
        
        let scores = ["1", "2", "three", "four", "5"]
        
        let mapped: [Int?] = scores.map { str in Int(str) }
        // [1, 2, nil, nil, 5] - Two nil values as "three" and "four" are strings.
        
        let flatMapped: [Int] = scores.flatMap { str in Int(str) }
        let compactMapped: [Int] = scores.compactMap { str in Int(str) }
        
        print("d")
    }
}

//
//  ClousersViewController.swift
//  Demos
//
//  Created by Kritika Middha on 08/02/19.
//  Copyright © 2019 ranosys. All rights reserved.
//

import UIKit

class ClousersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        doSomething()
        
    }
    
    func getSumOf(array:[Int], handler: @escaping ((Int)->Void)) {
        print("step 2")
        var sum: Int = 0
        for value in array {
            sum += value
        }
        
        print("step 3")
        handler(sum)
        print("end of function")
    }
    
    func doSomething() {
        print("setp 1")
        self.getSumOf(array: [16,756,442,6,23]) { sum in
            print(sum)
            print("step 4, finishing the execution")
        }
    }

}

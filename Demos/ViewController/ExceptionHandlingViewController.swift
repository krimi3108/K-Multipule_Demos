//
//  ExceptionHandlingViewController.swift
//  Demos
//
//  Created by Kritika on 4/10/18.
//  Copyright © 2018 ranosys. All rights reserved.
//

import UIKit

enum ErrorType: Error {
    case invalidData
    case badRequest
    case serverNotFound
}

final class SingletonA {
    static let sharedInstance = SingletonA()
    private init() {

    }
}

class ExceptionHandlingViewController: UIViewController {
//    var data: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        let a1 = SingletonA.sharedInstance
        let a2 = SingletonA.sharedInstance

//        let instance = UIApplication.init()

        let integerValue = try! firstMethod(value: 10)
    }

    func firstMethod(value: Int?) throws -> String {
        guard let val = value else {
            throw ErrorType.badRequest
        }
        return "The value of integer is: \(val)."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

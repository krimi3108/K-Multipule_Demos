//
//  ConvienenceInt.swift
//  Demos
//
//  Created by Kritika on 11/11/18.
//  Copyright © 2018 ranosys. All rights reserved.
// https://useyourloaf.com/blog/adding-swift-convenience-initializers/

import UIKit


class One {
    let a: String
    init(a: String) {
        self.a = a
    }
}

class Second: One {
    let b: String
    convenience init() {
//        super.init(a: "")
        self.init(b: "B")
    }

    convenience init(b: String) {
        self.init(a: "A", b: b)
    }

    init(a: String = "default A", b: String) {
        self.b = b
        super.init(a: a)
    }

}

class ConvienenceInt: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        Second.init() // (a: "asd", b: "sdf")
        print("")
    }
}

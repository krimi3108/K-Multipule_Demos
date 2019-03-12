//
//  SubscriptViewController.swift
//  Demos
//
//  Created by Kritika on 17/10/18.
//  Copyright © 2018 ranosys. All rights reserved.
//

import UIKit

@dynamicMemberLookup
class Person {
    let name: String
    let age: Int
    private let details: [String: String]

    init(name: String, age: Int, details: [String: String]) {
        self.name = name
        self.age = age
        self.details = details
    }

    subscript(dynamicMember key: String) -> String {
        switch key {
        case "info":
            return "\(name) is \(age) years old."
        default:
            return details[key] ?? ""
        }
    }
}


@dynamicMemberLookup
protocol Random {}
extension Random {
    subscript(dynamicMember key: String) -> Int {
        return Int.random(in: 0..<10)
    }
}
extension Int: Random {}


//extension Bool {
//    mutating func toggle() {
//        self = !self
//    }
//}


class SubscriptViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1
        let details = ["title": "Author", "instrument": "Guitar"]
        let me = Person(name: "Cosmin", age: 32, details: details)
        let me1 = Person(name: "Kritika", age: 24, details: details)
        print(me1.info)
        print(me.instrument)


        // 2
        let number = 10
        let randomDigit = String(number.digit)
        let noRandomDigit = String(number).filter { String($0) != randomDigit }
        print(noRandomDigit)

        // 3 Sequence Methods
        let values = [10, 8, 12, 20]
        let allEven = !values.contains { $0 % 2 == 1 }
        let allEven4_2 = values.allSatisfy({$0 % 2 == 0})

        // 4 Toggle
        var isOn = true
        isOn.toggle()


        print("")
    }
}


//
//  HashableEqutableViewController.swift
//  Demos
//
//  Created by Kritika on 19/9/18.
//  Copyright © 2018 ranosys. All rights reserved.
//
// https://useyourloaf.com/blog/swift-equatable-and-comparable/

import UIKit

struct Country: Comparable {
    static func < (lhs: Country, rhs: Country) -> Bool {
        return lhs.name > rhs.name && lhs.capital > rhs.capital
    }

    var name: String
    var capital: String
    var visited: Bool
}

struct Dog: Hashable {
    var name: String
    var breed: String
    var bark: Bool
}

class HashableEqutableViewController: UIViewController {
    var name: String? = "0"

    var data: String  = "Shrinu" {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        data = "kritika"
    


        equatableExample()
        CompareExample()
        hashableExample()
        sequenceExample()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension HashableEqutableViewController {
    func equatableExample() {

        let canada = Country(name: "Canada", capital: "Ottawa", visited: true)
        let australia = Country(name: "Australia", capital: "Canberra", visited: false)

        let bucketList = [canada,australia]
        let _ = bucketList.contains(canada)
    }

    func CompareExample() {

        let brazil = Country(name: "brazil", capital: "Ottawa", visited: true)
        let egypt = Country(name: "egypt", capital: "Ottawa", visited: true)
        let uk = Country(name: "uk", capital: "Ottawa", visited: true)
        let france = Country(name: "france", capital: "Ottawa", visited: true)
        let canada = Country(name: "Canada", capital: "Ottawa", visited: true)
        let australia = Country(name: "Australia", capital: "Canberra", visited: false)

        let bucketList = [brazil,australia,canada,egypt,uk,france]
        let _ = bucketList.sorted()
    }

    func hashableExample() {
        let bazzi = Dog(name: "Bazzi", breed: "germenShapred", bark: true)
        let bazzi1 = Dog(name: "Bazzi", breed: "germenShapred", bark: true)
        let sofie = Dog(name: "Sofie", breed: "germenShapred", bark: true)
        let setObj: Set = [bazzi, bazzi1, sofie]

        print(bazzi.hashValue)
        print(sofie.hashValue)
    }

    func sequenceExample() {

    }
}

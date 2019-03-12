//
//  ProtocolOrientedViewController.swift
//  Demos
//
//  Created by Kritika Middha on 14/02/19.
//  Copyright © 2019 ranosys. All rights reserved.
//


//https://medium.com/ios-os-x-development/how-protocol-oriented-programming-in-swift-saved-my-day-75737a6af022
import UIKit
protocol Logoutable {
    func logout()
}

class BaseViewController: UIViewController {
}

extension Logoutable where Self : BaseViewController {
    func logout() {
        //  Perform Logout
        print("Logout User logoutable extension.")
    }
}

class ProtocolOrientedViewController1: BaseViewController, Logoutable {
    
    override func viewDidLoad() {
        logout()
    }
    func logout() {
        //        After Protocol-Oriented change the method implementation.
    }
    
}

class ProtocolOrientedViewController2: UIViewController, Logoutable {
    func logout() {
        
    }
    override func viewDidLoad() {
        logout()
    }
}



// _*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_
// https://medium.com/nsistanbul/protocol-oriented-programming-in-swift-ad4a647daae2


protocol Weapon {
    var name: String { get }
//    var canFire: Bool { get }
//    var canCut: Bool { get }
}
extension Weapon {
    var canFire: Bool { return self is Fireable }
    var canCut: Bool { return self is Cuttable }
}


protocol Fireable {
    var magazineSize: Int { get }
}
protocol Cuttable {
    var weight: Double { get }
    var steel: String { get }
}

struct LongSword: Weapon, Cuttable {
    // longsword is a weapon with ability to cut. when don't use exension of protocol.
    let name: String
    let steel: String
    let weight = 7.2
//    let canFire = false
//    let canCut = true
}


struct AK47: Weapon, Fireable {
    // ak47 is also a weapon with ability to fire bullets. when don't use exension of protocol.
    let name = "AK47"
    let magazineSize = 30
//    let canFire = true
//    let canCut = false
}

class ProtocolOrientedViewController3: BaseViewController, Logoutable {
    
    override func viewDidLoad() {
        let longclaw = LongSword(name: "Longclaw", steel: "Valyrian")
        longclaw.canCut // true
        longclaw.canFire // false
        longclaw.name
        
        let documents = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)

        let ak47 = AK47()
        ak47.canFire  // true
        ak47.canCut // false
    }
}

// _*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_
// https://medium.com/@abhimuralidharan/all-about-protocols-in-swift-11a72d6ea354


protocol ProtocolPractice {
    var myString: String {get set}
    static func myFunc(data: inout Int)
}

class ProtocolOrientedViewController: UIViewController, ProtocolPractice {
  
    
    static func myFunc(data: inout Int) {
        
        
        
    }
    

    var myString: String = ""
}


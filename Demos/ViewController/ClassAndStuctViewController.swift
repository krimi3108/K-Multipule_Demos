//
//  ClassAndStuctViewController.swift
//  Demos
//
//  Created by Kritika on 30/9/18.
//  Copyright © 2018 ranosys. All rights reserved.
//

//https://stackoverflow.com/questions/24217586/structure-vs-class-in-swift-language

import UIKit
protocol sdlkjfa {
    var skdjfa: String {get set}

}
class A {
//    var skdjfa: String
    
//    let skdjfa: String = ""
    
    var aName: String?
    fileprivate var test: String?

    //    deinit {
    //
    //    }
}

extension A {
    func sdfkj() {
        self.test = ""
    }

}

struct B {
    var aObj = A()
    var bName: String?
    //    deinit {
    //Deinitializers may only be declared within a class
    //    }

}

class C: A {

    var demoString_c: String = "c class"
}

extension C {
    //    var demoString_stringc: String = "c class"
    struct ex {
        static var val: String!
    }
    func sda() {
        //        ex.val = "dfas"
        print(ex.val)
    }
}

struct D {
    let demoString_d: String!

}
class ClassAndStuctViewController: UIViewController {
    var bName: String?
    @IBOutlet weak var lbl: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
    

        let d = ["john": 23, "james": 4, "vincent": 34, "louis": 29]
        let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0 }

        let  obj_C = C()
        obj_C.sda()

        obj_C.demoString_c = "c class let changes"
        obj_C.demoString_c = ""


        let  obj_D = D(demoString_d: "c class let changes - 1")
        //        obj_D.demoString_d = "c class let changes - 2"


//    A : Class, B: sturct
        var bObj = B()
        bObj.aObj.aName = "Shinu"
        bObj.bName = "b Object"

        var b1Obj = bObj
        b1Obj.aObj.aName = "kritika" // Change Shinu to Kritika b'cz bObj is class's object and its refernce type.
        b1Obj.bName = "b1 Object"

        print(bObj.aObj.aName)
        print(b1Obj.aObj.aName)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}


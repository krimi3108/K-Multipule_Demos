//
//  TestViewController.swift
//  Demos
//
//  Created by Kritika on 8/10/18.
//  Copyright © 2018 ranosys. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        /*
         var array1 = [1, 2, 3, 4, 5]
         var array2 = array1
         array2.append(6)
         var len = array1.count

         let op1: Int = 1
         let op2: UInt = 2
         let op3: Double = 3.34
         var result = Double(op1) + Double(op2) + op3


         let d = ["john": 23, "james": 24, "vincent": 34, "louis": 29]
         let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0 }
         */



        
//        let employees = ["Steve", "Mark", "Gates", "Tim"]
//        employees.forEach { (employee) in
//            print(employee)
//            return
//            print("++++++")
//            print("----")
//
//        }
//
//        var thing = "car"
//        let clouser = {[thing] in
//            print("I love\(thing)")
//        }
//        thing = "plane"
//        clouser()


//        func reverseWordsInString(input: String) -> String {
//            var output: [Character] = []
//            for char in input {
//                output.insert(char, at: 0)
//
//            }
//            return String(output)
//        }
//        let _ = reverseWordsInString(input: "123")

//        struct IntStack {
//            var items = [Int]()
//            func add(x: Int) {
//                items.append(x)
//            }
//        }
//         var stack = IntStack(items: [1, 2, 3])
//         stack.add(x: 4)
//         print(stack.items)


         struct Car {
         var name: String
         var rank: Double
         }

         let planets = [
         Car(name: "Nano", rank: 2),
         Car(name: "Honda", rank: 3),
         Car(name: "Tata", rank: 1),

         ]

         let result1 = planets.map { $0.name == "Tata" }
         print(result1)

         let result2 = planets.reduce(1) { $0 > $1.rank ? $0 : $1.rank }
         print(result2)


//         var varA   = "Hello"
//         print( "length(varA)" )

         //        var varA = 42
         //        varA = "This is hello"
         //        print(varA)

//         var myString:String?
//         myString = "Hello, Swift!"
//         if myString != nil {
//         print(myString)
//         }else {
//         print("myString (has) nil value")
//         }


//         var s = "" as String?
//         var v1 = "Hello, Swift - \(s)"
//         s = "Optional"
//         var v2 = "Hello, Swift - \(s!)"
//         var v3 = v1.replacingOccurrences(of: v2, with: "")
//         print(v3)


//         var someInts = [Int]()
//         someInts.append(20)
//         someInts.append(30)
//         someInts += [40]
//         var someVar = someInts[0]
//         print( "Value of third element is (someInts[3])" )

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

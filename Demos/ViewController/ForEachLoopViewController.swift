//
//  ForEachLoopViewController.swift
//  Demos
//
//  Created by Kritika on 4/10/18.
//  Copyright © 2018 ranosys. All rights reserved.
//

import UIKit
// https://medium.com/@creative_rd/swift-difference-between-instance-methods-foreach-forin-loop-a1f73ba715c3
/*
 1.    You cannot use a break or continue statement to exit the current call of the body closure or skip subsequent calls. 

 2.    Using the return statement in the body closure will exit only from the current call to body, not from any outer scope, and won’t skip subsequent calls.
 */

class Employee {

    var employeeArray = ["Alex", "Jorge", "Andrew"]

    func printUsingForLoop(){
        for employee in employeeArray {
            print("Employee", employee)
            if employee == "Alex" {
                return
            }
        }
    }

    func printUsingForEach() {
        employeeArray.forEach { (employee) in
            print(employee)
            return
            print("+++")
//            print("Employee", employee)
            //            if employee == "Alex" {}
        }
    }
}

class ForEachLoopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let emp = Employee()

        emp.printUsingForLoop()
        print("***********************")
        emp.printUsingForEach()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

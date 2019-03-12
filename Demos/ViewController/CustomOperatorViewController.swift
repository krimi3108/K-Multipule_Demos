//
//  CustomOperatorViewController.swift
//  Demos
//
//  Created by Kritika on 4/10/18.
//  Copyright © 2018 ranosys. All rights reserved.
//
import UIKit

infix operator +++
// prefix, infix, postfix.

func +++ (a: Int, b: Int) -> Int {
    return a + b
}

class CustomOperatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var value = 5 +++ 10
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

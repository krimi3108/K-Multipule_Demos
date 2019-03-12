//
//  NSOperationQueueViewController.swift
//  Demos
//
//  Created by Kritika on 1/10/18.
//  Copyright © 2018 ranosys. All rights reserved.
//

import UIKit

class NSOperationQueueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let queue = OperationQueue()
        let operation1 = BlockOperation(block: {
            print("Operation 1 Start")

        })

        operation1.completionBlock = {
            print("Operation 1 completed")
        }
        queue.addOperation(operation1)

        let operation2 = BlockOperation(block: {
            print("Operation 2 Start")
        })

        operation2.completionBlock = {
            print("Operation 2 completed")
        }
        queue.addOperation(operation2)


        let operation3 = BlockOperation(block: {
            print("Operation 3 Start")
        })

        operation3.completionBlock = {
            print("Operation 3 completed")
        }
        queue.addOperation(operation3)

        let operation4 = BlockOperation(block: {
            print("Operation 4 Start")
        })

        operation4.completionBlock = {
            print("Operation 4 completed")
        }
        queue.addOperation(operation4)

        operation2.addDependency(operation1)
        operation3.addDependency(operation2)
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

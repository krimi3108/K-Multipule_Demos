//
//  GCDViewController.swift
//  Demos
//
//  Created by Kritika on 1/10/18.
//  Copyright © 2018 ranosys. All rights reserved.
//

import UIKit

class GCDViewController: UIViewController {
    var inactiveQueue: DispatchQueue!

    override func viewDidLoad() {
        super.viewDidLoad()

        sync()
        print("====".reversed())
        async()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Uncomment the following method call to test

        simpleQueues()

        // queuesWithQoS()

        /*
         concurrentQueues()
         if let queue = inactiveQueue {
         queue.activate()
         }
         */

        // queueWithDelay()

        // fetchImage()

        // useWorkItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func sync() {
        DispatchQueue(label: "xzy", qos: .unspecified, attributes: .concurrent).sync {
            for i in 100..<110 {
                print("Ⓜ️", i)
            }
        }
        print("After the block")

    }

    func async() {
        DispatchQueue(label: "xzy", qos: .unspecified, attributes: .concurrent).async {
            for i in 100..<110 {
                print("Ⓜ️", i)
            }
        }
        print("After the block")

    }

    func simpleQueues() {
        let queue = DispatchQueue(label: "com.appcoda.myqueue")

        queue.async {
            for i in 0..<10 {
                print("🔴", i)
            }
        }

        for i in 100..<110 {
            print("Ⓜ️", i)
        }
    }

    func queuesWithQoS() {
        let queue1 = DispatchQueue(label: "com.appcoda.queue1", qos: DispatchQoS.userInitiated)
        // let queue1 = DispatchQueue(label: "com.appcoda.queue1", qos: DispatchQoS.background)
        // let queue2 = DispatchQueue(label: "com.appcoda.queue2", qos: DispatchQoS.userInitiated)
        let queue2 = DispatchQueue(label: "com.appcoda.queue2", qos: DispatchQoS.utility)

        queue1.async {
            for i in 0..<10 {
                print("🔴", i)
            }
        }

        queue2.async {
            for i in 100..<110 {
                print("🔵", i)
            }
        }

        for i in 1000..<1010 {
            print("Ⓜ️", i)
        }
    }

    func concurrentQueues() {
        // let anotherQueue = DispatchQueue(label: "com.appcoda.anotherQueue", qos: .utility)
        // let anotherQueue = DispatchQueue(label: "com.appcoda.anotherQueue", qos: .utility, attributes: .concurrent)
        // let anotherQueue = DispatchQueue(label: "com.appcoda.anotherQueue", qos: .utility, attributes: .initiallyInactive)
        let anotherQueue = DispatchQueue(label: "com.appcoda.anotherQueue", qos: .userInitiated, attributes: [.concurrent, .initiallyInactive])
        inactiveQueue = anotherQueue

        anotherQueue.async {
            for i in 0..<10 {
                print("🔴", i)
            }
        }


        anotherQueue.async {
            for i in 100..<110 {
                print("🔵", i)
            }
        }


        anotherQueue.async {
            for i in 1000..<1010 {
                print("⚫️", i)
            }
        }
    }


    func queueWithDelay() {
        let delayQueue = DispatchQueue(label: "com.appcoda.delayqueue", qos: .userInitiated)

        print(Date())
        let additionalTime: DispatchTimeInterval = .seconds(2)

        delayQueue.asyncAfter(deadline: .now() + additionalTime) {
            print(Date())
        }
    }


    func fetchImage() {
        let imageURL: URL = URL(string: "http://www.appcoda.com/wp-content/uploads/2015/12/blog-logo-dark-400.png")!

        (URLSession(configuration: URLSessionConfiguration.default)).dataTask(with: imageURL, completionHandler: { (imageData, response, error) in

            if let data = imageData {
                print("Did download image data")

                DispatchQueue.main.async {
                    // UI Update
                    //self.imageView.image = UIImage(data: data)
                }
            }
        }).resume()
    }


    func useWorkItem() {
//        let workItem = DispatchWorkItem(qos: .default, flags: .assignCurrentContext) {
//            print("Print workItem")
//        }
//
//        let queue = DispatchQueue(label: "xyz", qos: .default)
//        queue.async(execute: workItem)

        var value = 10
        let workItem = DispatchWorkItem {
            value += 5
        }

        workItem.perform()

        let queue = DispatchQueue.global(qos: .utility)
        /*
         queue.async {
         workItem.perform()
                 }
                 */

        queue.async(execute: workItem)


        workItem.notify(queue: DispatchQueue.main) {
            print("value = ", value)
        }
    }
}


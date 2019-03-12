//
//  main.swift
//  DemoCompitency
//
//  Created by Kritika on 29/9/18.
//  Copyright © 2018 Kritika. All rights reserved.
//

import UIKit

enum AppDelName {
    static var name: Swift.AnyClass {

        #if DemoDEBUG
            return AppDelegate.self

        #elseif DummyDEBUG
            return MyAppDelegate.self

        #endif
    }
}

UIApplicationMain(CommandLine.argc, UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory( to: UnsafeMutablePointer<Int8>.self, capacity: Int(CommandLine.argc)), nil, NSStringFromClass(AppDelName.name))


//class MyApplication: UIApplication {
//    var time: Int = 0
//    var timer: Timer?
//    override func sendEvent(_ event: UIEvent) {
//        super.sendEvent(event)
//        
//        time = 0
//        if timer == nil {
//            timer = Timer.scheduledTimer(timeInterval: 6, target: self, selector: #selector(CheckTime), userInfo: nil, repeats: true)
//        }
//    }
//
//    @objc func CheckTime() {
//        time += 1
//        
//        if time == 2 , timer != nil {
//            self.timer?.invalidate() ; self.timer = nil; time = 0;
//
//            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "TimeOut"), object: nil, userInfo: nil)
//        }
//    }
//}
//
//UIApplicationMain(CommandLine.argc, UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer<Int8>.self, capacity: Int(CommandLine.argc)), NSStringFromClass(MyApplication.self), NSStringFromClass(MyAppDelegate.self))

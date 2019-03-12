//
//  ViewController.swift
//  Demos
//
//  Created by Kritika on 18/9/18.
//  Copyright © 2018 ranosys. All rights reserved.
//


// ******** Checking value of Raw value and hash value of enum. ********
// http://www.riptutorial.com/swift/example/825/raw-and-hash-values
// https://medium.com/@abhimuralidharan/enums-in-swift-9d792b728835

import UIKit

enum Data: Int {
    case data1
    case data2 = 8
    case data3
}

enum Student {
    case Name(String)
    case Mark(Int,Int,Int)
}

class EnumViewController: UIViewController {

    @IBOutlet var tbl: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Enum"
//        let string = "12.1gh34.5abc32.1"
//        let numbers = string.components(separatedBy: .letters)
//            .filter { !$0.isEmpty }
//            .compactMap { Double($0) }
        rawAndHashValue()
        assosiatedValue()
    }
    
    func rawAndHashValue() {
        // Hash value: Return the index of the enum starting from zero.

        // Raw value:
        // 1. Enums without any specific type do not expose the rawValue property
        // 2. String raw values can be synthesized automatically
        // 3. Integer raw values are assumed to start at 0 and increase monotonically:

        print(Data.data1.hashValue) // 0 (Index Values)
        print(Data.data1.hashValue) // 1 (Index Values)
        print(Data.data1.hashValue) // 2 (Index Values)


        print(Data.data1.rawValue) // 0 (assosiate Values)
        print(Data.data2.rawValue) // 8 (assosiate Values)
        print(Data.data3.rawValue) // 9 (assosiate Values)


    }

    func assosiatedValue() {
//        Difference between Associated Values and Raw Values

// |-------------------------------------------------------||---------------------------------------|
// |                Associated Values                      ||               Raw Values              |
// |-------------------------------------------------------||---------------------------------------|
// |      Different Datatypes                              ||     Same Datatypes                    |
// |      Ex: enum {10,0.8,"Hello"}                        ||     Ex: enum {10,35,50}               |
// |      Values are created based on constant or variable ||     Prepopulated Values               |
// |      Varies when declared each time                   ||     Value for member is same           |
// |-------------------------------------------------------||---------------------------------------|

        let studDetails = Student.Name("Swift")
        let studMarks = Student.Mark(98, 97, 95)

        switch studMarks {
        case .Name(let studName):
            print("Student name is: \(studName).")
        case .Mark(let Mark1, let Mark2, let Mark3):
            print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension EnumViewController: UITableViewDataSource, UITableViewDelegate {
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = "VCTypes.allCases[indexPath.row].rawValue"
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
}
func rawValue() {
    
    print(Data.data1.rawValue)
    print(Data.data2.rawValue)
    print(Data.data3.rawValue)
}


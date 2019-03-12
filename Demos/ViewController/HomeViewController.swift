//
//  HomeViewController.swift
//  Demos
//
//  Created by Kritika Middha on 01/02/19.
//  Copyright © 2019 ranosys. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let `fallthrough`: String?
        
        //        ultries basecamp// jira
        // Large Text on navigation.
        self.navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes =
            [NSAttributedStringKey.foregroundColor: UIColor.blue,
             NSAttributedStringKey.font: UIFont(name: "Papyrus", size: 30) ??
                UIFont.systemFont(ofSize: 30)]
        
        refreshControl = UIRefreshControl()
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let employees = ["Steve", "Mark", "Gates", "Tim"]
        employees.forEach { (employee) in
            print(employee)
            return print("++++++")
        }

    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VCTypes.allCases.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = VCTypes.allCases[indexPath.row].rawValue
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch VCTypes.allCases[indexPath.row] {
        case .enumEx:
            moveTo(vc: EnumViewController.self)
            
        case .clouserEX:
            moveTo(vc: ClousersViewController.self)

        case .classAndStructEx:
            moveTo(vc: ClassAndStuctViewController.self)

        case .convienceInitEx:
            moveTo(vc: ConvienenceInt.self)
            
        case .highOrderFunEx:
            moveTo(vc: HighOrderFuncViewController.self)
            
        case .protocolOrientedeEx:
            moveTo(vc: ProtocolOrientedViewController.self)
            
        default:
            break
            
        }
    }
}



extension UIViewController {
    
    func moveTo(vc: AnyClass) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: getClassIdentifier(vc))
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func getClassIdentifier(_ a: AnyClass) -> String {
        guard let className = NSStringFromClass(a).components(separatedBy: ".").last else {
            return ""
        }
        return className
    }
}

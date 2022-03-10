//
//  ViewController.swift
//  RetainCyclesInstrument
//
//  Created by Aaryaman Saini on 09/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show Red", style: .plain, target: self, action: #selector(handleShowRedController))
    }
    
    @objc func handleShowRedController() {
        navigationController?.pushViewController(RedController(), animated: true)
    }


}

class Service {
    var redController: RedController?
}

class RedController: UITableViewController {
    
    deinit{
        print("OS reclaiming memory for red container")
    }
    
    let service = Service()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .red
        
        service.redController = self
    }
}

//
//  ViewController.swift
//  iTahDoodleBNRSwiftCh27_iOSapp
//
//  Created by Neota Moe on 7/8/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    let todoList = TodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        guard let todo = itemTextField.text else {
            return
        }
        todoList.add(todo)
        tableView.reloadData()
    }

}


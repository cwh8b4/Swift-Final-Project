//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Cole Hayden on 7/28/17.
//  Copyright © 2017 Cole Hayden. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return taskMgr.tasks.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "test")
        
        cell.text = taskMgr.tasks[IndexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[IndexPath.row].desc
        
        return cell
    }

}


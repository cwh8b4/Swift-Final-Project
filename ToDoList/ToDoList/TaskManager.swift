//
//  TaskManager.swift
//  ToDoList
//
//  Created by Cole Hayden on 7/28/17.
//  Copyright © 2017 Cole Hayden. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
    
}

class TaskManager: NSObject {
    
    var tasks = task[]
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }

}

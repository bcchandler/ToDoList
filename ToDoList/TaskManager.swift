//
//  TaskManager.swift
//  ToDoList
//
//  Created by Chris Chandler on 7/3/16.
//  Copyright © 2016 Chris Chandler. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name: String
    var desc: String
}

struct TaskManager {
    
    var tasks = [task]()
/*
    init(name: String, desc:String) {
        tasks.append(task(name: name, desc: desc))
    }
*/
    mutating func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
//
//  TaskDataStore.swift
//  NotepadExample
//
//  Created by Julian Billings on 9/30/15.
//  Copyright (c) 2015 Julian Billings. All rights reserved.
//

import Foundation

class TaskDataStore {
    //class holds the master task array
    var allTasks = [Task]();
    
    func addTask(newTask: Task){
        allTasks.append(newTask);
    }
    
    func returnTaskArray() -> [Task]{
        return allTasks;
    }
}
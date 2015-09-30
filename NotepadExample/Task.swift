//
//  Task.swift
//  NotepadExample
//
//  Created by Julian Billings on 9/27/15.
//  Copyright (c) 2015 Julian Billings. All rights reserved.
//

import Foundation

class Task {
    //class represents each individual task
    var title: String;
    var dueDate: String;
    var category: Int;
    
    init (title: String, dueDate: String, category: Int){
        self.title = title;
        //let formatter = NSDateFormatter();
        //let dateParseResult = formatter.dateFromString(dueDate);
        self.dueDate = dueDate;
        self.category = category;
    }
}
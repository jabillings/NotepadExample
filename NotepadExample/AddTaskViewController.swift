//
//  AddTaskViewController.swift
//  NotepadExample
//
//  Created by Julian Billings on 9/29/15.
//  Copyright (c) 2015 Julian Billings. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    //References to various UI Elements
   
    @IBOutlet weak var newTaskName: UITextField!
    
    @IBOutlet weak var newTaskDate: UITextField!
    
    @IBOutlet weak var newTaskCategory: UISegmentedControl!
    
    @IBOutlet weak var newTaskEnter: UIButton!
    
    //MARK: AppDelegate Reference

    let appDel = UIApplication.sharedApplication().delegate as! AppDelegate;
    
    /*Got this^^ reference to AppDelegate from 0x7fffffff's answer on Stack Overflow to the question "How do I get a reference to the app delegate in Swift?" http://stackoverflow.com/questions/24046164/how-do-i-get-a-reference-to-the-app-delegate-in-swift */

    //MARK: globally used task array data
    
    var masterTaskArray = TaskDataStore();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        newTaskEnter.addTarget(self, action: "enterPress", forControlEvents: .TouchDown);
        //newTaskCategory.delegate = self;
        //newTaskCategory.dataSource = self;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: button handling
    
    func enterPress(){
        let createdTask = Task(title: newTaskName.text, dueDate: newTaskDate.text, category: newTaskCategory.selectedSegmentIndex);
        appDel.masterTaskArray.addTask(createdTask);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

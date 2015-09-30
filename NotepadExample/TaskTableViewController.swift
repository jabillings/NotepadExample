//
//  TaskViewController.swift
//  NotepadExample
//
//  Created by Julian Billings on 9/29/15.
//  Copyright (c) 2015 Julian Billings. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {
    
    //MARK: AppDelegate Reference
    
    let appDel = UIApplication.sharedApplication().delegate as! AppDelegate;
    
    /*Got this^^ reference to AppDelegate from 0x7fffffff's answer on Stack Overflow to the question "How do I get a reference to the app delegate in Swift?" http://stackoverflow.com/questions/24046164/how-do-i-get-a-reference-to-the-app-delegate-in-swift */

    
    //MARK: Properties
    
    var tasks = [Task]();

    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = appDel.masterTaskArray.returnTaskArray();

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellID = "TaskTableViewCell";
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as! TaskTableViewCell
        
        //set cell to its corresponding Task properties
        
        let curTask = tasks[indexPath.row];
        
        cell.taskTitle.text = curTask.title;
        cell.taskDate.text = curTask.dueDate;
        switch curTask.category{
        case 0:
            cell.backgroundColor = UIColor.cyanColor();
        case 1:
            cell.backgroundColor = UIColor.greenColor();
        default:
            cell.backgroundColor = UIColor.grayColor();
        }

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}

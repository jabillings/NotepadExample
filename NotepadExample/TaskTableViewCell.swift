//
//  TaskTableViewCell.swift
//  NotepadExample
//
//  Created by Julian Billings on 9/29/15.
//  Copyright (c) 2015 Julian Billings. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    //MARK: Properties
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var taskDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

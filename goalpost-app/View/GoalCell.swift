//
//  GoalCell.swift
//  goalpost-app
//
//  Created by mac on 4/14/18.
//  Copyright © 2018 DoThuyHanhChuyen. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configueCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text =
           String(describing: goal.goalProgress)
    }

}

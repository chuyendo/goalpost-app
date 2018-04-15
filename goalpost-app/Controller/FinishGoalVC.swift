//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by mac on 4/15/18.
//  Copyright © 2018 DoThuyHanhChuyen. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDesciption: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDesciption = description
        self.goalType = type
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    }

    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        // Pass data into Core Data Goal Model
    }
    
}

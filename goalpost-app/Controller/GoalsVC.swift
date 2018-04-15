//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by mac on 4/12/18.
//  Copyright © 2018 DoThuyHanhChuyen. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     tableView.delegate = self
     tableView.dataSource = self
    }
    
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
     guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else { return }
     presentDetail(viewControllerToPresent: createGoalVC)
    }

}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
     func numberOfSections(in tableView: UITableView) -> Int {
          return 1
     }
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 3
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
          cell.configueCell(description: "Eat salad twice a week", type: .shortTerm, goalProgressAmount: 2)
          return cell
          
     }
}


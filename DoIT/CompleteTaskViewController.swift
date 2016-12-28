//
//  CompleteTaskViewController.swift
//  DoIT
//
//  Created by Jorge on 11/24/16.
//  Copyright © 2016 Jorge Velasco Sanvodal. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var taskView = TaskObject()
    var newTaskSender = ViewController()

    @IBOutlet weak var taskNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if taskView.important {
            taskNameLabel.text = "‼️\(taskView.taskName)"
        } else {
            taskNameLabel.text = taskView.taskName
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func markAsComplete(_ sender: Any) {
        newTaskSender.tasks.remove(at: newTaskSender.selectedTaskID)
        newTaskSender.tasksViewController.reloadData()
        navigationController!.popViewController(animated: true)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

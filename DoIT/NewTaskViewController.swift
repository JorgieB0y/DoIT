//
//  NewTaskViewController.swift
//  DoIT
//
//  Created by Jorge on 11/23/16.
//  Copyright © 2016 Jorge Velasco Sanvodal. All rights reserved.
//

import UIKit

class NewTaskViewController: UIViewController {

    var newTaskSender = ViewController()
    
    @IBOutlet weak var newTaskTextField: UITextField!
    @IBOutlet weak var importantTaskSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTaskButton(_ sender: Any) {
        let task = TaskObject()
        task.taskName = newTaskTextField.text!
        task.important = importantTaskSwitch.isOn
        
        newTaskSender.tasks.append(task)
        newTaskSender.tasksViewController.reloadData()
        navigationController!.popViewController(animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

//
//  NewTaskViewController.swift
//  DoIT
//
//  Created by Jorge on 11/23/16.
//  Copyright © 2016 Jorge Velasco Sanvodal. All rights reserved.
//

import UIKit

class NewTaskViewController: UIViewController {
    
    @IBOutlet weak var newTaskTextField: UITextField!
    @IBOutlet weak var importantTaskSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTaskButton(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext /*This is accesing the "context" feature in the AppDelegate file that was created by Apple in order to connect Core Data in our App*/
        
        
        let task = Task(context: context)
        (UIApplication.shared.delegate as! AppDelegate).saveContext() //saving the "context" in core data
        
        task.taskName = newTaskTextField.text!
        task.important = importantTaskSwitch.isOn
        
        // Pop Back to the main View Controller
        navigationController!.popViewController(animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

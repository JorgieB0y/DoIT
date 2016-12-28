//
//  CompleteTaskViewController.swift
//  DoIT
//
//  Created by Jorge on 11/24/16.
//  Copyright © 2016 Jorge Velasco Sanvodal. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var taskView: Task? = nil

    @IBOutlet weak var taskNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if taskView!.important {
            taskNameLabel.text = "‼️\(taskView!.taskName!)"
        } else {
            taskNameLabel.text = taskView!.taskName
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func markAsComplete(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(taskView!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

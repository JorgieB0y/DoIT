//
//  ViewController.swift
//  DoIT
//
//  Created by Jorge on 11/23/16.
//  Copyright © 2016 Jorge Velasco Sanvodal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tasksViewController: UITableView!
    
    var tasks: [TaskObject] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTask()
        
        tasksViewController.dataSource = self
        tasksViewController.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "‼️\(task.taskName)"
        } else {
            cell.textLabel?.text = task.taskName
        }
        return cell
    }
    
    func makeTask() ->  [TaskObject] {
        let task1 = TaskObject()
        task1.taskName = "Finish Learning Swift"
        task1.important = false
        
        let task2 = TaskObject()
        task2.taskName = "Walk the dog"
        task2.important = true
        
        let task3 = TaskObject()
        task3.taskName = "Get Xmas Presents"
        task3.important = false
        
        return [task1, task2, task3]
    }
    
    @IBAction func addTaskButton(_ sender: Any) {
        performSegue(withIdentifier: "addTaskSegue", sender: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


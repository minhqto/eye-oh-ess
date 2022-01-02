//
//  ViewController.swift
//  CoreData2
//
//  Created by Minh To on 2021-12-07.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    //this context variable is needed when a view wants to manipulate data in CoreData
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func addEmployee() {
        //create employee
        //set props
        //save to db
        
        let employee = Employee(context: self.context)
        employee.dateHired = "2022-01-04"
        employee.name = "Minh To"
        
        do {
            try self.context.save()
            print("Employee saved!")
        } catch {
            print("employee not saved!")
        }
    }

    @IBAction func addEmployeePressed(_ sender: Any) {
        addEmployee()
    }
    
    
}


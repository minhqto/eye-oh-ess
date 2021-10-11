//
//  ViewController.swift
//  EmployeePayslip
//
//  Created by Minh To on 2021-10-10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var wage: UITextField!
    @IBOutlet weak var hoursWorked: UITextField!
    @IBOutlet weak var lblGrossIncome: UILabel!
    @IBOutlet weak var lblTaxAmount: UILabel!
    @IBOutlet weak var lblNetIncome: UILabel!
    
    private let taxRate = 0.15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func generateButtonPressed(_ sender: Any) {
        let _: String = name.text ?? "N/A"
        let hourlyWageEntered: String = wage.text ?? "0"
        let hoursWorkedEntered: String = hoursWorked.text ?? "0"
        
        self.lblGrossIncome.text = "Gross Income: "
        self.lblTaxAmount.text = "Tax: "
        self.lblNetIncome.text = "Net Income: "
        
        guard let hourlyWage = Double(hourlyWageEntered) else {
            self.lblGrossIncome.text = self.lblGrossIncome.text! + " " + "Field cannot be empty"
            return
        }
        
        guard let hoursWorked = Double(hoursWorkedEntered) else {
            self.lblGrossIncome.text = self.lblGrossIncome.text! + " " + "Field cannot be empty"
            return
        }
    

        
        self.lblGrossIncome.text = self.lblGrossIncome.text! + " $" + String((hourlyWage ) * (hoursWorked ))
        
        self.lblTaxAmount.text = self.lblTaxAmount.text! + " $" + String((hourlyWage ) * (hoursWorked ) * self.taxRate)
        
        let netIncome = ((hourlyWage ) * (hoursWorked )) - ((hourlyWage ) * (hoursWorked ) * taxRate)
        
        self.lblNetIncome.text = self.lblNetIncome.text! + " $" + String(netIncome)
    }
    
}


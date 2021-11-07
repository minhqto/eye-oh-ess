//
//  ViewController.swift
//  PizzaTime
//
//  Created by Minh To on 2021-10-19.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var selectedPizza: String = ""
    var selectedDescription: String = ""
    var pizzaSize: String = ""
    
    @IBOutlet weak var pizzaPicker: UIPickerView!
    @IBOutlet weak var pizzaDescLbl: UILabel!
    @IBOutlet weak var sizeSegControl: UISegmentedControl!
    @IBOutlet weak var quantityStepperControl: UIStepper!
    @IBOutlet weak var quantityLbl: UILabel!
    @IBOutlet weak var receiptLbl: UILabel!
    
    let pizzas: [(name: String, description: String)] = [
        ("Spicy Pulled Pork Pizza", "Slow-roasted pulled pork with a special spicy and smoky BBQ pizza sauce."),
        ("Vegetarian Fiesta Pizza", "Roasted red peppers, caramelized onions, sundried organic tomatoes, feta, and spinach, on a thin crust with pesto sauce."),
        ("The Original", "Pepperoni, cheese, green onions. Served with extra tomato sauce and three types of cheese")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.pizzaPicker.delegate = self
        self.pizzaPicker.dataSource = self
        self.pizzaDescLbl.text = pizzas[2].description
        self.pizzaPicker.selectRow(2, inComponent: 0, animated: true)
        self.quantityStepperControl.value = 1
        self.quantityLbl.text = Int(self.quantityStepperControl.value).description
        self.receiptLbl.text = ""
        self.sizeSegControl.selectedSegmentIndex = 1
        self.pizzaSize = "Medium"
    }
    
    @IBAction func sizeSegControl(_ sender: Any) {
        switch sizeSegControl.selectedSegmentIndex {
            case 0: self.pizzaSize = "Small";
            case 1: self.pizzaSize = "Medium";
            case 2: self.pizzaSize = "Large"
            default: break
        }
    }
    
    
    @IBAction func quantityStepperChanged(_ sender: Any) {
        self.quantityLbl.text = Int(quantityStepperControl.value).description
    }
    
    @IBAction func placeOrderButtonPressed(_ sender: Any) {
        let confirmOrderAlertBox =  UIAlertController(
            title: "Confirm Order",
            message: "Are you sure you are ready to place this order?",
            preferredStyle: .alert
        )
        
        confirmOrderAlertBox.addAction(
            UIAlertAction(
                title: "Confirm",
                style: .default,
                handler: {_ in self.displayReceipt()}
        ))
        
        confirmOrderAlertBox.addAction(
            UIAlertAction(
                title: "Cancel",
                style: .destructive,
                handler: nil
        ))
        
        self.present(confirmOrderAlertBox, animated: true)
    }
    
    @IBAction func clearOrderButtonPressed(_ sender: Any) {
        self.resetMenu()
    }
    
    private func displayReceipt() {
        let ontarioTax = 0.13
        var subTotal = 0.0
        switch sizeSegControl.selectedSegmentIndex {
            case 0: subTotal = 15.5 * quantityStepperControl.value
            case 1: subTotal = 17.5 * quantityStepperControl.value
            case 2: subTotal = 21.5 * quantityStepperControl.value
            default: subTotal = 0.0
        }
        
        self.receiptLbl.text = " Pizza: \(selectedPizza)\n Pizza Size: \(self.pizzaSize)\n Pizza Quantity: \(self.quantityLbl.text!)\n Subtotal : $\(String(format: "%.2f", subTotal))\n Tax: $\(String(format: "%.2f", ontarioTax * subTotal))\n Total: $\(String(format: "%.2f", subTotal + subTotal * ontarioTax))"
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedPizza = pizzas[row].name
        return pizzas[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.pizzaDescLbl.text = pizzas[row].description
    }
    
    private func resetMenu() {
        self.viewDidLoad()
        self.viewWillAppear(true)
    }
}


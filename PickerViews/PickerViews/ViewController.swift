//
//  ViewController.swift
//  PickerViews
//
//  Created by Minh To on 2021-10-14.
//

import UIKit

 /*
 * because we want to implement the PickerView, this class must conform
 * to UIPickerViewDelegate and UIPickerViewDataSource
 */
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var carPicker: UIPickerView!
    @IBOutlet weak var selectedItemLbl: UILabel!
    
    let cars = ["Toyota Supra", "Tesla Model S", "Range Rover", "Mercedes S Class", "BMW M3", "Audi RS7", "Ferrari La Ferrari", "Porsche 911", "Lexus LFA", "Honda Type R"]
    
    //number of columns in the pickerview
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //set the number of elements the pickerView will hold
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    //titleForRow and forComponent are argument labels
    //when calling this function, you can pass in arguments and assign
    // and assign them with the argument label
    //ex. pickerView(pickerView, titleForRow: 4, forComponent: 1)
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cars[row]
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.carPicker.delegate = self
        self.carPicker.dataSource = self
    }
    
    
    @IBAction func selectCarPressed(_ sender: Any) {
        let selectedCarIndex = self.carPicker.selectedRow(inComponent: 0)
        self.selectedItemLbl.text = "Selected car: \(cars[selectedCarIndex])"
    }
    
}

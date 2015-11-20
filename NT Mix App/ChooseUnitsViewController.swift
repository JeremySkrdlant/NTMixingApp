//
//  ChooseUnitsViewController.swift
//  NT Mix App
//
//  Created by Jeremy Skrdlant on 11/13/15.
//  Copyright © 2015 Jeremy Skrdlant. All rights reserved.
//

import UIKit

protocol ChooseUnitsDelegate{
    func updateUnitValue(input:MeasurementUnit, output:MeasurementUnit)
    func deleteChemical()
}

class ChooseUnitsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var delegate:ChooseUnitsDelegate?
    
    @IBOutlet weak var unitsPickerView: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func confirmSettings() {
        let inputString = unitStrings[unitsPickerView.selectedRowInComponent(0)]
        let outputString = unitStrings[unitsPickerView.selectedRowInComponent(1)]
        delegate?.updateUnitValue(inputString.convertToMeasurementUnit()!, output: outputString.convertToMeasurementUnit()!)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: - Picker View Code
    let unitStrings = ["Cups", "Fluid Ounces", "Gallons",
        "Pints","Pounds","Quarts"];
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return unitStrings.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return unitStrings[row]
    }
    
    @IBAction func removeChemical() {
        // TODO:- Show a confirmation alert.
        delegate?.deleteChemical()
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}

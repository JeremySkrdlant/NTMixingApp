//
//  ChooseUnitsViewController.swift
//  NT Mix App
//
//  Created by Jeremy Skrdlant on 11/13/15.
//  Copyright © 2015 Jeremy Skrdlant. All rights reserved.
//

import UIKit

class ChooseUnitsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var unitsPickerView: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func confirmSettings() {
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
        //Show a confirmation alert.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

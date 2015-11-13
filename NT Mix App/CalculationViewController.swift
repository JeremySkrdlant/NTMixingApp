//
//  CalculationViewController.swift
//  NT Mix App
//
//  Created by Jeremy Skrdlant on 11/12/15.
//  Copyright © 2015 Jeremy Skrdlant. All rights reserved.
//

import UIKit

class CalculationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tankVolumeInput: UITextField!
    @IBOutlet weak var acresInput: UITextField!
    @IBOutlet weak var applicationRateInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        <#code#>
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        <#code#>
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }

    @IBAction func hideKeyboards() {
        tankVolumeInput.resignFirstResponder()
        acresInput.resignFirstResponder()
        applicationRateInput.resignFirstResponder()
    }
 


}

class Product: NSObject {
    var unitOfMeasurment:MeasurementUnit
    var productRate:Double
    
    init(rate:Double, units:MeasurementUnit) {
        self.unitOfMeasurment = units
        self.productRate = rate
    }
    
    func outputAmountInGallons()->Double{
        //convert the product rate into gallons
        
        //take it times the rate
        
        return 0.0
    }
}

enum MeasurementUnit{
    case fluidOunce
    case gallon
    case pint
    case cup
    case quart
    case pound
}

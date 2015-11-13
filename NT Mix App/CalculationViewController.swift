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
    
    func outputAmountInGallons(acres:Double)->Double{
        var currentRate = 0.0
        //This gets the precision from the app delegate
        let precision = (UIApplication.sharedApplication().delegate as! AppDelegate).precision
        
        //convert the product rate into gallons
        switch(unitOfMeasurment)
        {
        case MeasurementUnit.cup:
            currentRate = productRate.cupsToGallons(precision)
        case MeasurementUnit.gallon:
            currentRate = productRate
        case MeasurementUnit.fluidOunce:
            currentRate = productRate.fluidOuncesToGallons(precision)
        case MeasurementUnit.quart:
            currentRate = productRate.quartToGallons(precision)
        case MeasurementUnit.pint:
            currentRate = productRate.pintsToGallons(precision)
        }
        //take it times the rate
        let totalAmountInGallons = currentRate * acres
        return totalAmountInGallons
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

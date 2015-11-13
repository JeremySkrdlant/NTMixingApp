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
        return 0
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        return cell!
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    @IBAction func hideKeyboards() {
        tankVolumeInput.resignFirstResponder()
        acresInput.resignFirstResponder()
        applicationRateInput.resignFirstResponder()
    }
 
    @IBAction func tankVolume() {
        let tank = (tankVolumeInput.text! as NSString).doubleValue
        let acress = (acresInput.text! as NSString).doubleValue
        let appRate = (applicationRateInput.text! as NSString).doubleValue
        
        if (appRate != 0){
            acresInput.text = "\(tank/appRate)"
        }
        
    }
    @IBAction func applicationRate() {
        let tank = (tankVolumeInput.text! as NSString).doubleValue
        let acress = (acresInput.text! as NSString).doubleValue
        let appRate = (applicationRateInput.text! as NSString).doubleValue
        if appRate != 0{
            acresInput.text = "\(tank/appRate)"
        }else{
            acresInput.text = "invalid"
        }
    }

    @IBAction func acres() {
        let tank = (tankVolumeInput.text! as NSString).doubleValue
        let appRate = (applicationRateInput.text! as NSString).doubleValue
        let acress = (acresInput.text! as NSString).doubleValue
        
        if (appRate != 0){
             tankVolumeInput.text = "\(acress * appRate)"
        }
    }
}

class Product: NSObject {
    var unitOfMeasurment:MeasurementUnit
    var productRate:Double
    
    init(rate:Double, units:MeasurementUnit) {
        self.unitOfMeasurment = units
        self.productRate = rate
    }
    
    func outputAmountInGallons(acres:Double, precision:Double)->Double{
        var currentRate = 0.0
        
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
        case MeasurementUnit.pound:
            currentRate = productRate
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


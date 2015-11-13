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
    var arrayOfProducts = []
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let dest = tableView.dequeueReusableCellWithIdentifier("cell") as! Datacell
        return dest
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProducts.count
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
    var name:String = ""
    
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

class Datacell:UITableViewCell{
    @IBOutlet weak var productNameLbl: UITextField!
    @IBAction func fluidAmountAction(sender: UITextField) {
    }
    @IBOutlet weak var fluidAmountLbl: UITextField!
    @IBOutlet weak var coversionLbl: UILabel!
    
}

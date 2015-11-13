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
    @IBOutlet weak var productsTableView: UITableView!
    
    var arrayOfProducts:[Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfProducts.append(Product(rate: 0, units: MeasurementUnit.gallon))
    }
    
    // MARK:- TableView Data Source and Delegate Section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0
        {
            let dest = tableView.dequeueReusableCellWithIdentifier("cell") as! Datacell
            dest.acres = (self.acresInput.text! as NSString).doubleValue
            dest.product = arrayOfProducts[indexPath.row]
            dest.changeUnitsButton.tag = indexPath.row
            dest.changeUnitsButton.addTarget(self, action: "updateUnits:", forControlEvents: .TouchUpInside)
            //create the updateUnits function
            return dest
        }
        let addCell = tableView.dequeueReusableCellWithIdentifier("addCell")
        return addCell!
    }
    
    func updateUnits(btn:UIButton){
        print("updating Units")
        self.performSegueWithIdentifier("updateUnits", sender: nil)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return arrayOfProducts.count
        }else
        {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if (indexPath.section == 1)
        {
            let newProduct = Product(rate: 0, units: MeasurementUnit.gallon)
            arrayOfProducts.append(newProduct)
            tableView.reloadSections(NSIndexSet(index: 0), withRowAnimation: UITableViewRowAnimation.Top)
        }
    }

    // MARK:- Handle Keyboards
    @IBAction func hideKeyboards() {
        tankVolumeInput.resignFirstResponder()
        acresInput.resignFirstResponder()
        applicationRateInput.resignFirstResponder()
    }
    
    // MARK:- Input Auto Calculations
 
    @IBAction func tankVolume() {
        let tank = (tankVolumeInput.text! as NSString).doubleValue
        let appRate = (applicationRateInput.text! as NSString).doubleValue
        if (appRate != 0){
            acresInput.text = "\(tank/appRate)"
            productsTableView.reloadData()
        }
    }
    @IBAction func applicationRate() {
        let tank = (tankVolumeInput.text! as NSString).doubleValue
        let appRate = (applicationRateInput.text! as NSString).doubleValue
        if appRate != 0{
            acresInput.text = "\(tank/appRate)"
            productsTableView.reloadData()
            
        }else{
            acresInput.text = "0"
        }
    }

    @IBAction func acres() {
        let appRate = (applicationRateInput.text! as NSString).doubleValue
        let acres = (acresInput.text! as NSString).doubleValue
        if (appRate != 0){
             tankVolumeInput.text = "\(acres * appRate)"
        }
        productsTableView.reloadData()
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

class Datacell:UITableViewCell{
    var product:Product?
    var acres = 0.0
    var precision = (UIApplication.sharedApplication().delegate as! AppDelegate).precision
    
    @IBOutlet weak var productNameLabel: UITextField!
    @IBOutlet weak var totalAmountUnits: UILabel!
    @IBOutlet weak var applicationRatePerAcre: UITextField!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var applicationRateUnits: UILabel!
    @IBOutlet weak var changeUnitsButton: UIButton!

    @IBAction func changeInApplicationLevel(sender: UITextField) {
        product?.productRate = (sender.text! as NSString).doubleValue
        let total = product!.outputAmountInGallons(acres, precision: precision)
        totalAmountLabel.text = "\(total)"
        
    }
}

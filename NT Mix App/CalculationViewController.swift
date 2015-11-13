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
        if (tank == 0){
            tankVolumeInput.text = "\(acress * appRate)"
        }
        
    }
    @IBAction func applicationRate() {
        let tank = (tankVolumeInput.text! as NSString).doubleValue
        let acress = (acresInput.text! as NSString).doubleValue
        let appRate = (applicationRateInput.text! as NSString).doubleValue
        if (appRate==0){
            applicationRateInput.text = "\(tank/acress)"
        }
    }

    @IBAction func acres() {
        let tank = (tankVolumeInput.text! as NSString).doubleValue
        let appRate = (applicationRateInput.text! as NSString).doubleValue
        let acress = (acresInput.text! as NSString).doubleValue
        if (acress == 0){
            acresInput.text = "\(tank/appRate)"
        }
    }
}



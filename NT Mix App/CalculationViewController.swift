//
//  CalculationViewController.swift
//  NT Mix App
//
//  Created by Jeremy Skrdlant on 11/12/15.
//  Copyright © 2015 Jeremy Skrdlant. All rights reserved.
//

import UIKit

class CalculationViewController: UIViewController {
    @IBOutlet weak var tankVolumeInput: UITextField!
    @IBOutlet weak var acresInput: UITextField!
    @IBOutlet weak var applicationRateInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
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



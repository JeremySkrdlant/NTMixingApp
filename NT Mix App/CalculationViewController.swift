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
 


}


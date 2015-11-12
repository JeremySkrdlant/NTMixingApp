//
//  Conversion.swift
//  NT Mix App
//
//  Created by Jeremy Skrdlant on 11/12/15.
//  Copyright © 2015 Jeremy Skrdlant. All rights reserved.
//

import UIKit

extension Double{
    func fluidOuncesToGallons(roundAmount:Double)->Double{
    
        //there are 128 fluid ounces in a gallon
        let result = self / 128
        return round(result * roundAmount) / roundAmount
    }
    
    func gallonsToFluidOunces(roundAmount:Double)->Double{
        //brian
        return 0.0
    }
    
    func ouncesToPounds(roundAmount:Double)->Double{
        //jude
        return 0.0
    }
    
    func poundsToFluidOunces(roundAmount:Double)->Double{
        return 0.0
    }
    
    func cupsToGallons(roundAmount:Double)->Double{
        //raymond
        return 0.0
    }
    
    func gallonsToCups(roundAmount:Double)->Double{
        //raymond
        return 0.0
    }
    
    func pintsToGallons(roundAmount:Double)->Double{
        return 0.0
    }
    
    func gallonsToPints(roundAmount:Double)->Double{
        return 0.0
    }
    
    func quartToGallons(roundAmount:Double)->Double{
        //Xavier
        return 0.0
    }
    
    func gallonsToQuarts(roundAmount:Double)->Double{
        //Xavier
        return 0.0
    }
}



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
        //This takes the value of self which is 
        //in fluid ounces and converts it to gallons
        //there are 128 fluid ounces in a gallon
        let result = self / 128
        return round(result * roundAmount) / roundAmount
    }
    
    func gallonsToFluidOunces(roundAmount:Double)->Double{
        return 0.0
    }
    
    func ouncesToPounds(roundAmount:Double)->Double{
        let result = roundAmount/16
        return round(result)
    }
    
    func poundsToFluidOunces(roundAmount:Double)->Double{
        return 0.0
    }
    
    func cupsToGallons(roundAmount:Double)->Double{
        return 0.0
    }
    
    func gallonsToCups(roundAmount:Double)->Double{
        return 0.0
    }
    
    func pintsToGallons(roundAmount:Double)->Double{
        return 0.0
    }
    
    func gallonsToPints(roundAmount:Double)->Double{
        return 0.0
    }
    
    func quartToGallons(roundAmount:Double)->Double{
        return 0.0
    }
    
    func gallonsToQuarts(roundAmount:Double)->Double{
        return 0.0
    }
}



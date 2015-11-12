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
    
    func gallonsToFluidOunces()->Double{
        return 0.0
    }
    
    func ouncesToPounds()->Double{
        return 0.0
    }
    
    func poundsToFluidOunces()->Double{
        return 0.0
    }
    
    func cupsToGallons()->Double{
        return 0.0
    }
    
    func gallonsToCups()->Double{
        return 0.0
    }
    
    func pintsToGallons()->Double{
        return 0.0
    }
    
    func gallonsToPints()->Double{
        return 0.0
    }
    
    func quartToGallons()->Double{
        return 0.0
    }
    
    func gallonsToQuarts()->Double{
        return 0.0
    }
}



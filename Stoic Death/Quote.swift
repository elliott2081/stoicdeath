//
//  Quote.swift
//  Stoic Death
//
//  Created by David Elliott on 3/31/16.
//  Copyright © 2016 Adventure Design. All rights reserved.
//

import UIKit

class Quote: NSObject {
    
    func getQuote() -> String{
        var returnString = ""
        let bundle = NSBundle.mainBundle()
        let quotesplistURL = bundle.URLForResource("quotes", withExtension: "plist")
        let quotesArray = NSArray(contentsOfURL: quotesplistURL!) //first element of the array is Quote:Quote,Author:Author
        print(quotesArray![dayNumber()])
        if let quoteString : String = quotesArray?[dayNumber()]["Quote"] as? String{
            if let authorString : String = quotesArray?[dayNumber()]["Author"] as? String{
                //author and quote are in the plist
                returnString = "\"\(quoteString)\" \n- \(authorString)"
            } else{
                //no author in plist
                returnString = "\"\(quoteString)\" \n- unknown"
            }
        }
        return returnString
    }
    
    
    
    private func dayNumber() -> Int{
        let currentDateTime = NSDate()
        let userCalendar = NSCalendar.currentCalendar()
        let day = userCalendar.ordinalityOfUnit(.Day, inUnit: .Year, forDate: currentDateTime)
        
        
        return day
    }
}

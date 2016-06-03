//
//  QuoteViewController.swift
//  Stoic Death
//
//  Created by David Elliott on 3/22/16.
//  Copyright © 2016 Adventure Design. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController {

    let QuoteOfDay = Quote() //model object that manages quotes
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var philosopherImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        //load the image of the philosopher
        philosopherImage.image = UIImage(named: "MarcusAuerlius")
        philosopherImage.alpha = 0.5
        
        //put the quote on the screen
        quoteLabel.text = QuoteOfDay.getQuote()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dayNumber() -> Int{
        let currentDateTime = NSDate()
        let userCalendar = NSCalendar.currentCalendar()
        let day = userCalendar.ordinalityOfUnit(.Day, inUnit: .Year, forDate: currentDateTime)

            
        return day
    }

    
}


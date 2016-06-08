//
//  ReminderTimeViewController.swift
//  Stoic Death
//
//  Created by David Elliott on 3/31/16.
//  Copyright © 2016 Adventure Design. All rights reserved.
//

import UIKit

class SetTimeViewController: UIViewController {
    var dateTime : NSDate?

    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)



        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if saveButton === sender{
            dateTime = datePicker.date
        }
    }
    

    
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func datePickerChanged(sender: UIDatePicker) {
        //dateTime = datePicker.date
    }

}

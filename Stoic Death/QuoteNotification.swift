//
//  Notification.swift
//  Local Notification
//
//  Created by Matthew Loupe on 4/5/16.
//  Copyright © 2016 Matthew Loupe. All rights reserved.
//

import UIKit

class QuoteNotification: NSObject { //extend notification?
    
    //MARK: Properties
    let notification = UILocalNotification()
    var dateString : String{
        get{
            let formatter = NSDateFormatter()
            formatter.dateFormat = "hh:mm a"
            return formatter.stringFromDate(notification.fireDate!)
        }
    }
    
    //MARK: Methods
    init(date: NSDate) {
        super.init()
        self.notification.fireDate = date
        self.notification.alertBody = "A new Stoic Death meditation awaits."
        //self.notification.alertAction = "be awesome!"
        self.notification.soundName = UILocalNotificationDefaultSoundName
        self.notification.userInfo = ["CustomField1": "w00t"]
    }
    func schedule(){
        UIApplication.sharedApplication().scheduleLocalNotification(self.notification)
    }
    
    func deschedule(){
        UIApplication.sharedApplication().cancelLocalNotification(self.notification)
        print(UIApplication.sharedApplication().scheduledLocalNotifications)
    }
    
    deinit{
        //deinit is called when an object is destroyed
        //this is useful if an element is removed from an array of notifications
        //the notification will be automatically descheduled from the OS
       deschedule()
        
        //Note! if not using this class in an array, deinit will be called
        //right after calling .schedule. Therefore, no notification will be 
        //triggered because it was cancelled right after creation
        
    }
    

}

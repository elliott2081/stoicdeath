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
    var notification = UILocalNotification()
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
        self.notification.repeatInterval = NSCalendarUnit.Day
        self.notification.soundName = UILocalNotificationDefaultSoundName
    }
    init(notification: UILocalNotification){
        super.init()
        self.notification = notification
    }
    func schedule(){
        UIApplication.sharedApplication().scheduleLocalNotification(self.notification)
    }
    
    func deschedule(){
        UIApplication.sharedApplication().cancelLocalNotification(self.notification)
        print(UIApplication.sharedApplication().scheduledLocalNotifications)
    }

}

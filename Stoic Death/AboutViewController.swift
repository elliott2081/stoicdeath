//
//  AboutViewController.swift
//  Stoic Death
//
//  Created by David Elliott on 3/22/16.
//  Copyright © 2016 Adventure Design. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // textView.text = "Awesome Awesome Awesome!"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        //self.automaticallyAdjustsScrollViewInsets = false
        
        let path = NSBundle.mainBundle().pathForResource("about", ofType: "txt")
        
        let contents: NSString
        do {
            contents = try NSString(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
        } catch _ {
            contents = ""
        }
        self.textView.text  = contents as String

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.textView.setContentOffset(CGPoint.zero, animated: false)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

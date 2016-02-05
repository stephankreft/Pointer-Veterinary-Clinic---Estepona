//
//  AboutViewController.swift
//  pointerapp
//
//  Created by stephan kreft on 05/02/2016.
//  Copyright © 2016 stephan kreft. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var btnCall: UIButton!
    
    @IBOutlet weak var btnAppointment: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
            // make buttons have rounded corners
            
        btnCall.layer.cornerRadius = 10
        btnCall.clipsToBounds = true
        btnCall.layer.borderColor = UIColor.blackColor().CGColor
        btnCall.layer.borderWidth = 2
    
        btnAppointment.layer.cornerRadius = 10
        btnAppointment.clipsToBounds = true
        btnAppointment.layer.borderColor = UIColor.blackColor().CGColor
        btnAppointment.layer.borderWidth = 2
        
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillAppear(animated: Bool) {
        navigationController?.navigationBarHidden = false
        super.viewWillAppear(animated)
    }

    @IBAction func callUs(sender: AnyObject) {
          UIApplication.sharedApplication().openURL(NSURL(string: "tel://952804165")!)
    }

}

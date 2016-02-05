//
//  OpeningHoursViewController.swift
//  pointerapp
//
//  Created by stephan kreft on 16/10/2015.
//  Copyright © 2015 stephan kreft. All rights reserved.
//

import UIKit

class OpeningHoursViewController: UIViewController {

    @IBOutlet weak var btnCallEmergency: UIButton!
    @IBOutlet weak var btnToAppointment: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnCallEmergency.layer.cornerRadius = 10
        btnCallEmergency.clipsToBounds = true
        btnCallEmergency.layer.borderColor = UIColor.blackColor().CGColor
        btnCallEmergency.layer.borderWidth = 2
        
        
        btnToAppointment.layer.cornerRadius = 10
        btnToAppointment.clipsToBounds = true
        btnToAppointment.layer.borderColor = UIColor.blackColor().CGColor
        btnToAppointment.layer.borderWidth = 2
        

        

    
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func callEmergency(sender: AnyObject) {
         UIApplication.sharedApplication().openURL(NSURL(string: "tel://689069502")!)
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

}

//
//  AboutViewController.swift
//  pointerapp
//
//  Created by stephan kreft on 16/10/2015.
//  Copyright © 2015 stephan kreft. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var btnCallUs: UIButton!
    @IBAction func callButton(sender: AnyObject) {
        
        let phone = "tel://952804165";
        
        let url:NSURL = NSURL(string: phone)!
        
        UIApplication.sharedApplication().openURL(url)

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        btnCallUs.layer.cornerRadius = 10
        btnCallUs.clipsToBounds = true
        btnCallUs.layer.borderColor = UIColor.whiteColor().CGColor
        btnCallUs.layer.borderWidth = 2
        
        
        
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

    
}

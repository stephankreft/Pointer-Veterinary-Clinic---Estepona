//
//  ViewController.swift
//  pointerapp
//
//  Created by stephan kreft on 15/10/2015.
//  Copyright © 2015 stephan kreft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var btnAbout: UIButton!
    
  
    @IBOutlet weak var btnOpeningHours: UIButton!
    
    @IBOutlet weak var btnFindUs: UIButton!
    
    @IBOutlet weak var btnAppointment: UIButton!
    
    @IBOutlet weak var btnServices: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Make logo have rounded corners
        
        logo.layer.cornerRadius = 10
        logo.clipsToBounds = true
        
        // make buttons have rounded corners
        
        btnAbout.layer.cornerRadius = 10
        btnAbout.clipsToBounds = true
        btnAbout.layer.borderColor = UIColor.blackColor().CGColor
        btnAbout.layer.borderWidth = 2
        
        btnOpeningHours.layer.cornerRadius = 10
        btnOpeningHours.clipsToBounds = true
        btnOpeningHours.layer.borderColor = UIColor.blackColor().CGColor
        btnOpeningHours.layer.borderWidth = 2
        
        
        btnFindUs.layer.cornerRadius = 10
        btnFindUs.clipsToBounds = true
        btnFindUs.layer.borderColor = UIColor.blackColor().CGColor
        btnFindUs.layer.borderWidth = 2
        
        btnAppointment.layer.cornerRadius = 10
        btnAppointment.clipsToBounds = true
        btnAppointment.layer.borderColor = UIColor.blackColor().CGColor
        btnAppointment.layer.borderWidth = 2
        
        btnServices.layer.cornerRadius = 10
        btnServices.clipsToBounds = true
        btnServices.layer.borderColor = UIColor.blackColor().CGColor
        btnServices.layer.borderWidth = 2
        
        
        

        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        navigationController?.navigationBarHidden = true
        super.viewWillAppear(animated)
    }

}


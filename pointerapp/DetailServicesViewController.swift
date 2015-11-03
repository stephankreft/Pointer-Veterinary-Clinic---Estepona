//
//  DetailServicesViewController.swift
//  pointerapp
//
//  Created by stephan kreft on 26/10/2015.
//  Copyright © 2015 stephan kreft. All rights reserved.
//

import UIKit

class DetailServicesViewController: UIViewController {

   
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var txtDesc: UITextView!
    
    var service:Services = Services()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //lblName.text = store.storeName
       // lblDesc.text = store.storeDesc
        
        lblName.text = service.servicesName
        txtDesc.text = service.servicesDesc
    
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

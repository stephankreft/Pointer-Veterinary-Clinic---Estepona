//
//  AppointmentViewController.swift
//  pointerapp
//
//  Created by stephan kreft on 16/10/2015.
//  Copyright © 2015 stephan kreft. All rights reserved.
//

import UIKit
import Foundation

class AppointmentViewController: UIViewController,NSURLConnectionDelegate{

    @IBOutlet weak var btnSend: UIButton!
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var phoneNumberText: UITextField!
    @IBOutlet weak var petsNameText: UITextField!
    @IBOutlet weak var messageText: UITextField!
    @IBOutlet weak var appointmentText: UITextField!
    @IBOutlet weak var emailAddressText: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        // make buttons have rounded corners
        
        btnSend.layer.cornerRadius = 10
        btnSend.clipsToBounds = true
        btnSend.layer.borderColor = UIColor.blackColor().CGColor
        btnSend.layer.borderWidth = 2

        
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
   
    
    @IBAction func cancelButtonTapped(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    @IBAction func sendMailTapped(sender: AnyObject) {
        
       
        
        
        let firstName : String = firstNameText.text!
        let lastName : String = lastNameText.text!
        let emailAddress : String = emailAddressText.text!
        let phoneNumber : String =  phoneNumberText.text!
        let appointment : String = appointmentText.text!
        let petsName : String = petsNameText.text!
        let message : String = messageText.text!
        
        
    
        if( firstName.isEmpty || lastName.isEmpty || emailAddress.isEmpty || phoneNumber.isEmpty)
        
        {
            displayAlertMessage("First name , last name , email address and phone number are required!")
            
            return
        }
        
        let myUrl = NSURL(string: "http://pointerclinic.com/php/iosmail.php");
        let request = NSMutableURLRequest(URL:myUrl!);
        
       request.HTTPMethod = "POST"
        
    
        let postString = "firstName=\(firstName)&lastName=\(lastName)&email=\(emailAddress)&phone=\(phoneNumber)&petsName=\(petsName)&message=\(message)&appointment=\(appointment)";
                
       request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding);
        
        
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
            data, response, error in
            
            if error != nil
            {
                
             return
            }
        

        
        }
        
        self.firstNameText.text = ""
        self.lastNameText.text = ""
        self.emailAddressText.text = ""
        self.phoneNumberText.text = ""
        self.petsNameText.text = ""
        self.appointmentText.text = ""
        self.messageText.text = ""
        
        
        
        self.displayAlertMessage("Thank you for contacting us. We will contact you shortly")
        
       
        
        
        
        
        
        task.resume()
    }
    func displayAlertMessage(userMessage: String){
        let myAlert = UIAlertController (title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil)

    
    }
    
    
}

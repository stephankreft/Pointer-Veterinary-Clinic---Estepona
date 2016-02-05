//
//  ServicesTableViewController.swift
//  pointerapp
//
//  Created by stephan kreft on 26/10/2015.
//  Copyright © 2015 stephan kreft. All rights reserved.
//

import UIKit

class ServicesTableViewController: UITableViewController {
    
    //var servicesList = ["Vaccination", "Microchips", "Surgery", "Diagnostic Imaging"," Dental", "Parasites", "Products", "Pet Travel"]
    
    
    var servicesList = [Services]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var service = Services(name: "Vaccination", desc: "Yearly rabies vaccinations are legally required in Spain in both dogs, cats and ferrets. Vaccinations are essential for the health and prevention of contagious diseases such as distemper, parvovirus, hepatitis, leptospirosis, parainfluenza and rabies in dogs, and calici virus, rhinotracheitis, leukemia, chlamydia and rabies in cats. Vaccinations start at 6 weeks old for puppies, with a parvovirus and distemper vaccination, followed at 8 and 12 weeks with the cocktail vaccination covering all contagious diseases. From 13 weeks old the rabies vaccination can be given and legally repeated after 1 month. These vaccinations need to be repeated every year.Vaccinations are essential for travel to different countries with a European passport, please check with the country to which you are travelling to find out the requirements. Other vaccinations are Kennelcough ( KC intranasal 2 x per year and Pneumodog injection 2x then once a year); Leishmania 3x then once a year and Heart worm vaccination 1x per year.")
        
        servicesList += [service]
        
        service = Services(name: "Microchips", desc: "All dogs, cats and ferrets are legally required to be microchipped. This is a simple procedure where the chip is inserted with a needle through the skin in the neck/shoulder region of your animal. All animals have to be microchipped before a rabies vaccination can be given. We then register the details of the pet and owner on a database for Andalucia (RAIA). This provides proof of ownership, access to your contact details in case your pet goes missing, and also a record of rabies vaccinations and antiparasite treatment, which are all legal requirements once a year.  If your pet has been microchipped and registered in another province of Spain it will have to be unsubscibed (dar de baja) there and inscribed (dar de alta) in Andalucia. If your pet has been microchipped and registered in another country we will need the paper of that registration to be able to inscribe in Andalucia under the same owners name.  NOW AVAILABLE: MINI MICROCHIPS!!  Mini microchips are only 1.4 x 8.5 mm which is appr. half the size of a normal microchip. Ideal for the small dog breeds, puppies, kittens, tortoises, birds etc.")
        
        servicesList += [service]
        
        
        service = Services(name: "Surgery", desc: "Surgical procedures are performed under local or general anaesthesia in an operation theatre.Before any surgery we will provide you with the details of the procedure and if necessary perform a preanaesthetic blood test. We will then ask you to bring your pet to the clinic in the morning without any food from the previous evening. Water is allowed. Your pet will be weighed and settled into the hospitalisation area. Depending on the surgical procedure we will prepare the operation site which usually means shaving the area. The surgical site is then washed and desinfected and drapes placed around the site. There are a choice of anaesthetic agents available for use depending on age, size, and type of surgery being performed.After the operation is done, the site is cleaned and sometimes dressed. The patient returns to the recovery area to calmly wake up. This is an open area for easy access and monitoring. A powerful painkiller will be given.When you come to collect your pet they will be able to stand and walk with you unless otherwise indicated. If there is a chance of your animal licking the wound, you will be provided with a plastic collar which prevents the animal from being able to access the site. Usually post operative antibiotics will need to be given.Like humans, all animals will recover from the anaesthetic and surgery at a different pace.  The postoperative painkiller given at the time of surgery will be effective for 24 hours. Most pets will be sleepy and quiet for the 1st 24/48 hours. Within this time rest is essential. Some pets will be unable to control their bladder or bowel effectively for the 1st 24 hours. This is normal. Every surgery is diffrerent and we will provide you with detailed aftercare instructions. Please prepare for the extra care that your pet will need from you for up to 10 days after surgery. ")
        
        servicesList += [service]
        
        
        service = Services(name: "Diagnostic Imaging", desc: "Radiographs (or Xrays) can be taken of any part of the body to visualize and diagnose what the naked eye cannot see.  Radiographs (or Xrays) can be taken of any part of the body to visualize and diagnose what the naked eye cannot see.  Official Xrays have to be done for certain dog breeds of the hips and elbows in order to prevent hip and elbow displasia in the offspring. They can be sent to the spanish or UK officials for evaluation.  Ultrasound allows a three dimentional view of organs to diagnose disease, or even pregnancy.  Endoscopy lets us travel into the body to have a look and to collect material for examination or to remove foreign objects without surgical intervention.  MRI (magnetic resonance) or TAC creates an image in layers of the body whereby all structures are revealed. This for the moment can only be done in the Referral Centre Bahia de Malaga in Alhaurin de la Torre.")
        
        servicesList += [service]
        
        
        service = Services(name: "Parasites", desc: "We have a full pharmacy service and also a wide range of anti-parasitical products and special Veterinary diets")
        
        servicesList += [service]
        
        service = Services(name: "Products ", desc: "ROYAL CANINE: We stock the veterinary diet and normal range in all sizes. OPTIMA: Is a good food with good value for money. ")
        
        servicesList += [service]
        
        
        service = Services(name: "Pet Travel", desc: "This is pet travel")
        
        servicesList += [service]
        
        
        service = Services(name: "Dental", desc: "A dental is a teethscaling and polishing performed under a light sedation and if needed a small amount of gas anaesthesia.     During a consultation teeth will be checked. However if you are concerned about your pets dental hygiene, our nurses are more than happy to perform a free dental check and recommend the required treatments.    Most animals over 5 years (sometimes sooner in toy breeds) will require some form of dental treatment, ranging from prescription medicine to a full dental cleaning. Also younger animals of smaller breeds occasionally need assistance with the extraction of stubborn milk teeth.  During a dental cleaning the excess tartar is removed with an ultrasonic scaler. When we can see the health of the underlying teeth, extractions can be performed if necessary. The teeth are then polished to create a smooth surface and help prevent new plaque and tartar formation. Some animals with an excessive amount of bacteria, tartar and gingivitis may require antibiotics. Care needs to be taken in the future and we can recommend a range of products to help reduce reoccurence, but it is common for many dogs to require yearly treatment. ")
        
        servicesList += [service]

        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return servicesList.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let s = servicesList[indexPath.row] as Services
        
        cell.textLabel?.text = s.servicesName
        //cell.textLabel?.text = "Hello"
        cell.detailTextLabel?.text = s.servicesDesc
        cell.imageView?.image = UIImage(named: "pet32.png")
        
        
        
        // Configure the cell...

        return cell
    }
   
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "details"
        {
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let s = servicesList[indexPath.row] as Services
                let dvc = segue.destinationViewController as! DetailServicesViewController
                
                dvc.service = s
                
                
            }
            
            
            
    }
    }

    
    
    

    override func viewWillAppear(animated: Bool) {
        navigationController?.navigationBarHidden = false
        super.viewWillAppear(animated)
    }

    
}

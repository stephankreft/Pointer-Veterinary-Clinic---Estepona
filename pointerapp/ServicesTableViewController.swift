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
        
        
        var service = Services(name: "Vaccination", desc: "Yearly rabies vaccinations are legally required in Spain in both dogs, cats and ferrets. Vaccinations are essential for the health and prevention of contagious diseases such as distemper, parvovirus, hepatitis, leptospirosis, parainfluenza and rabies in dogs, and calici virus, rhinotracheitis, leukemia, chlamydia and rabies in cats. Vaccinations start at 6 weeks old for puppies, with a parvovirus and distemper vaccination, followed at 8 and 12 weeks with the cocktail vaccination covering all contagious diseases. From 13 weeks old the rabies vaccination can be given and legally repeated after 1 month. These vaccinations need to be repeated every year.")
        
        servicesList += [service]
        
        service = Services(name: "Microchips", desc: "This is microchips")
        
        servicesList += [service]
        
        
        service = Services(name: "Surgery", desc: "This is surgery")
        
        servicesList += [service]
        
        
        service = Services(name: "Diagnostic Imaging", desc: "This is diagnostic imaging")
        
        servicesList += [service]
        
        
        service = Services(name: "Dental", desc: "A dental is a teethscaling and polishing performed under a light sedation and if needed a small amount of gas anaesthesia.During a consultation teeth will be checked. However if you are concerned about your pets dental hygiene, our nurses are more than happy to perform a free dental check and recommend the required treatments.")
        
        servicesList += [service]
        
        service = Services(name: "Parasites", desc: "This isp arasites")
        
        servicesList += [service]
        
        service = Services(name: "Products ", desc: "This is products")
        
        servicesList += [service]
        
        
        service = Services(name: "Pet Travel", desc: "This is pet travel")
        
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

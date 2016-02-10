//
//  FindUsViewController.swift
//  pointerapp
//
//  Created by stephan kreft on 13/11/2015.
//  Copyright © 2015 stephan kreft. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import Contacts




class FindUsViewController: UIViewController, UITableViewDataSource,MKMapViewDelegate {
   
    @IBOutlet weak var mapView: MKMapView!
    
    
    @IBOutlet weak var tableView: UITableView!
    
   
    
    
    var destinations:[Destination]
    
    var userAnnotation:MKPointAnnotation?
    var userCoordinate:CLLocationCoordinate2D?
    
    required init?(coder aDecoder: NSCoder) {
        
        let Pointer = Destination(withName: "Pointer Clinic Estepona", latitude: 36.443467, longitude: -5.098944,
            address: [
                CNPostalAddressStreetKey:"Pointer Veterinary Clinic - Estepona",
                CNPostalAddressCityKey:"Estepona",
                CNPostalAddressPostalCodeKey:"29680",
                CNPostalAddressCountryKey:"Spain"])
        
        destinations = [Pointer]
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
       mapView.delegate = self
        
        
        let tap = UITapGestureRecognizer(target: self, action: "handleTap:")
        mapView.addGestureRecognizer(tap)
        
        mapView.region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: CLLocationDegrees(36.4435068),
                longitude: CLLocationDegrees(-5.1098817)),
            span: MKCoordinateSpan(
                latitudeDelta: CLLocationDegrees(0.05),
                longitudeDelta: CLLocationDegrees(0.05)))
        
        for destination in destinations {
            let annotation = MKPointAnnotation()
            annotation.coordinate = destination.coordinate
            mapView.addAnnotation(annotation)
        }
    }
    
    func handleTap(gestureRecognizer:UITapGestureRecognizer) {
        let point = gestureRecognizer.locationInView(mapView)
        
        userCoordinate = mapView.convertPoint(point, toCoordinateFromView:mapView)
        
        if userAnnotation != nil {
            mapView.removeAnnotation(userAnnotation!)
        }
        
        userAnnotation = MKPointAnnotation()
        userAnnotation!.coordinate = userCoordinate!
        mapView.addAnnotation(userAnnotation!)
        
        for cell in self.tableView.visibleCells as! [DestinationTableViewCell] {
            cell.userCoordinate = userCoordinate
        }
    }
}

// UITableView Datasource
extension FindUsViewController {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinations.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("destinationCell") as! DestinationTableViewCell
        cell.destination = destinations[indexPath.row]
        cell.userCoordinate = userCoordinate
        return cell
    }
    
}



// MKMapViewDelegate
extension FindUsViewController {
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")
        pin.pinTintColor = annotation === userAnnotation ? UIColor.redColor() : UIColor.blueColor()
        return pin
    }
    override func viewWillAppear(animated: Bool) {
        navigationController?.navigationBarHidden = false
        super.viewWillAppear(animated)
    }
}



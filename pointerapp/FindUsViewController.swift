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




class FindUsViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate{
    
    @IBOutlet weak var btnGetDirections: UIButton!
    
    @IBOutlet var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    var myPosition = CLLocationCoordinate2D()
    
    // creae a variable destination for directions
    
    var destination:MKMapItem = MKMapItem()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        let locCoord = CLLocationCoordinate2D(latitude: 36.442279, longitude: -5.100038)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = locCoord
        annotation.title = "Pointer Veterinary Clinic "
        annotation.subtitle = "Estepona"
        
        mapView.addAnnotation(annotation)
        
        // make get directions  button rounded
        
        btnGetDirections.layer.cornerRadius = 10
        btnGetDirections.clipsToBounds = true
        btnGetDirections.layer.borderColor = UIColor.whiteColor().CGColor
        btnGetDirections.layer.borderWidth = 2
        
        
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        
        
        print("Got Location \(newLocation.coordinate.latitude) , \(newLocation.coordinate.longitude) ")
        
        myPosition = newLocation.coordinate
        
        locationManager.stopUpdatingLocation()
        
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: newLocation.coordinate, span: span)
        mapView.setRegion(region, animated: true)
        
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addPin(sender: UILongPressGestureRecognizer) {
        
        
        let location = sender.locationInView(self.mapView)
        
        let locCoord = self.mapView.convertPoint(location, toCoordinateFromView: self.mapView)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = locCoord
        annotation.title = "Pointer Veterinary Clinic"
        annotation.subtitle = "Estepona"
        
        
        
        // create a place mark and a map item
        
        let placeMark = MKPlacemark(coordinate: locCoord, addressDictionary: nil)
        
        
        // This is needed when we need to get direction
        
        destination = MKMapItem(placemark: placeMark)
        
        
        
        
        self.mapView.removeAnnotations(mapView.annotations)
        
        self.mapView.addAnnotation(annotation)
        
    }
    
    
    @IBAction func showDirections(sender: AnyObject) {
        
        
        // Need to create a MKDiirection Request
        
        let request = MKDirectionsRequest()
        request.source = MKMapItem.mapItemForCurrentLocation()
        
        
        request.destination = destination
        request.requestsAlternateRoutes = false
        
        let directions = MKDirections(request: request)
        
        
        directions.calculateDirectionsWithCompletionHandler { (response, error) -> Void in
            
            if error != nil {
                
                print("Error \(error)")
                
                
            } else {
                
                
                //self.dispLayRout(response)
                
                let overlays = self.mapView.overlays
                self.mapView.removeOverlays(overlays)
                
                for route in response!.routes {
                    
                    self.mapView.addOverlay(route.polyline,
                        level: MKOverlayLevel.AboveRoads)
                    
                    for next  in route.steps {
                        print(next.instructions)
                    }
                }
                
                
            }
            
        }
        
        
        
    }
    
    
    // This one draws the rout on the map using map overlays
    // you need to make sure that the deleget for the mapview in the storyboard
    // is set to this class
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer
    {
        let draw = MKPolylineRenderer(overlay: overlay)
        draw.strokeColor = UIColor.purpleColor()
        draw.lineWidth = 3.0
        return draw
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

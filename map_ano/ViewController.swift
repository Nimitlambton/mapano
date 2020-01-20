//
//  ViewController.swift
//  map_ano
//
//  Created by MacStudent on 2020-01-20.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

import MapKit

import CoreData


class ViewController: UIViewController {


    static var managedContext: NSManagedObjectContext!
    
    let annotation = MKPointAnnotation()
    
     
    
    @IBOutlet weak var Mymap: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //annotation.coordinate = CLLocationCoordinate2D(latitude: 43.7855184, longitude: -79.3719253)
        
      //  Mymap.addAnnotation(annotation)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
      
        super.viewWillAppear(animated)

        
        
        
        
    }
    


    @IBAction func nextscreen(_ sender: Any) {

     performSegue(withIdentifier: "jump", sender: self)
 
    }
    
    

    
    

     
    
    

    

}

extension ViewController : CLLocationManagerDelegate , MKMapViewDelegate{
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        
        
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
       
        
    }
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        <#code#>
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        <#code#>
    }
    
    
}

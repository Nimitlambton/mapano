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
    
    var maplist = [Mapdetails]()
    
    let annotation = MKPointAnnotation()
    
     let locationManager = CLLocationManager()
    
    
    @IBOutlet weak var Mymap: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.locationManager.requestWhenInUseAuthorization()
              
              if CLLocationManager.locationServicesEnabled() {
                  locationManager.delegate = self
                  locationManager.desiredAccuracy = kCLLocationAccuracyBest
                  locationManager.startUpdatingLocation()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
      
        super.viewWillAppear(animated)

       maplist = fetchRecords()
        Mymap.delegate = self
        print(maplist.first?.lat)
        setAnnonation()
    }

    
    func fetchRecords() -> [Mapdetails]{
                //
               
        let fetchRequest = NSFetchRequest<Mapdetails>(entityName: "Mapdetails")
                 
                 do{
                    
                    maplist = try ViewController.managedContext.fetch(fetchRequest)
                 
                 }catch{
                     
                    print(error)
                 }
                 
                return maplist
             
    }
    

    @IBAction func nextscreen(_ sender: Any) {

     performSegue(withIdentifier: "jump", sender: self)
 
    }
    

    func setAnnonation() {
           
           var locValue:CLLocationCoordinate2D = CLLocationCoordinate2D()
           
           print("latitude" + "\(locValue.latitude)")
           print("latitude" + "\(locValue.longitude)")
           
           
           var pinPoint = [MKPointAnnotation]()
           
           maplist = fetchRecords()
           Mymap.removeAnnotations(Mymap.annotations)
           
           //Set Multiple Pins on Map
           for i in 0..<maplist.count{
               let annotation = MKPointAnnotation()
               
               locValue.latitude = maplist[i].lat
               locValue.longitude = maplist[i].long
               
               annotation.coordinate = locValue
               Mymap.isZoomEnabled = false
               
               
               annotation.title = maplist[i].title
            annotation.subtitle = maplist[i].subtitle?.description
               
               self.Mymap.showAnnotations(self.Mymap.annotations, animated: true)
               
               pinPoint.append(annotation)
           }
           
           Mymap.addAnnotations(pinPoint)
           
           // For Zoom out from Map
           
           let loca = CLLocationCoordinate2DMake(locValue.latitude,
                                                 locValue.longitude)
           let coordinateRegion = MKCoordinateRegion(center: loca,
                                                     latitudinalMeters: 4000000, longitudinalMeters: 4000000)
           Mymap.setRegion(coordinateRegion, animated: true)
       }
    

}

extension ViewController : CLLocationManagerDelegate , MKMapViewDelegate{
    
    
}

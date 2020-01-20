//
//  ViewController.swift
//  map_ano
//
//  Created by MacStudent on 2020-01-20.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    
    @IBOutlet weak var Mymap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func nextscreen(_ sender: Any) {
   
     performSegue(withIdentifier: "jump", sender: self)
    
        
        
    }
    
    


    

}


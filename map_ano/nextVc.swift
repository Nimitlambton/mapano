//
//  nextVc.swift
//  map_ano
//
//  Created by MacStudent on 2020-01-20.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class nextVc: UIViewController {

    
    var mapD: Mapdetails?
  
    var oldMapD : Mapdetails?
   
    
    @IBOutlet weak var titl: UITextField!
    
    @IBOutlet weak var subtitl: UITextField!

    @IBOutlet weak var long: UITextField!

    @IBOutlet weak var lat: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func save(_ sender: Any) {
        
        
        
        let CmapD = Mapdetails(context: ViewController.managedContext)
        
        let stitle = titl.text!
        let ssubtitle = subtitl.text!
        let slong = Double(long.text!) ??  43.7855184
        let slat = Double(lat.text!) ??  -79.3719253
        
        CmapD.lat = slat
        CmapD.long = slong
        CmapD.title = stitle
        CmapD.subtitle = ssubtitle
        
        try! ViewController.managedContext.save()
        
                      
               
    
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    
  
    

}

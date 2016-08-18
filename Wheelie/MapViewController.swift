//
//  MapViewController.swift
//  Wheelie
//
//  Created by Cameron Moreau on 8/18/16.
//  Copyright © 2016 Mobi. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    lazy var locationManager: CLLocationManager = {
        var manager = CLLocationManager()
        manager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        manager.delegate = self
        return manager
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavbar()
        locationManager.requestWhenInUseAuthorization()
    }
    
    func setupNavbar() {
        
        // Add image icon to title
        let logo = UIImageView(image: UIImage(named: "ic_logo"))
        logo.frame.size.height = 40
        logo.contentMode = .ScaleAspectFit
        
        self.navigationItem.titleView = logo
        
        if let navbar = self.navigationController?.navigationBar {
            
            // Change color
            navbar.translucent = false
            navbar.barTintColor = UIColor.whiteColor()
            
            // Remove bottom border
            navbar.shadowImage = UIImage()
            navbar.setBackgroundImage(navbar.shadowImage, forBarMetrics: .Default)
        }
    }
}

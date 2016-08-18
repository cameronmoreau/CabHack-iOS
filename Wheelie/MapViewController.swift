//
//  MapViewController.swift
//  Wheelie
//
//  Created by Cameron Moreau on 8/18/16.
//  Copyright © 2016 Mobi. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var topInfoConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomInfoConstraint: NSLayoutConstraint!
    
    
    lazy var locationManager: CLLocationManager = {
        var manager = CLLocationManager()
        manager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        manager.delegate = self
        return manager
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavbar()
        
        mapView.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
    
    func mapView(mapView: MKMapView, regionWillChangeAnimated animated: Bool) {
        
        self.view.layoutIfNeeded()
        UIView.animateWithDuration(0.25) {
            self.topInfoConstraint.constant = -40
            self.bottomInfoConstraint.constant = -40
            self.view.layoutIfNeeded()
        }
    }
    
    func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        
        self.view.layoutIfNeeded()
        UIView.animateWithDuration(0.25) {
            self.topInfoConstraint.constant = 12
            self.bottomInfoConstraint.constant = 12
            self.view.layoutIfNeeded()
        }
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

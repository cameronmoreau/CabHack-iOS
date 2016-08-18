//
//  MapViewController.swift
//  Wheelie
//
//  Created by Cameron Moreau on 8/18/16.
//  Copyright © 2016 Mobi. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavbar()
    }
    
    func setupNavbar() {
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

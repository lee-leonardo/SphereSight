//
//  ViewController.swift
//  SphereSight
//
//  Created by Leonardo Lee on 2/21/16.
//  Copyright © 2016 Leonardo Lee. All rights reserved.
//

import GoogleMaps
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var blueButton: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        buttonExperiment()
//        setupMaps()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonExperiment() {
        blueButton = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        blueButton?.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blueButton!)
    }
    
    func setupMaps() {
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86, longitude: 151.20, zoom: 6)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }

}


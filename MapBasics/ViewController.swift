//
//  ViewController.swift
//  MapBasics
//
//  Created by Tim Ng on 1/14/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mapView: MKMapView = {
            let mapView = MKMapView()
            mapView.translatesAutoresizingMaskIntoConstraints = false
            return mapView
        }()
        
        view.addSubview(mapView)
        NSLayoutConstraint.activate([
                mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                mapView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                mapView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                mapView.heightAnchor.constraint(equalTo: view.heightAnchor)
            ])
        
        
        
        
    }


}


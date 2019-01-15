//
//  ViewController.swift
//  MapBasics
//
//  Created by Tim Ng on 1/14/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    let mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        return mapView
    }()
    
    let longPressRecognizer: UILongPressGestureRecognizer = {
        let recognizer = UILongPressGestureRecognizer()
        return recognizer
    }()
    
    var annotations = [MKAnnotation]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        mapView.addGestureRecognizer(longPressRecognizer)
        mapView.delegate = self
        longPressRecognizer.addTarget(self, action: #selector(handleLongPress))
        
        view.addSubview(mapView)
       
        NSLayoutConstraint.activate([
                mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                mapView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                mapView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                mapView.heightAnchor.constraint(equalTo: view.heightAnchor)
            ])
        
    }
    
    @objc func handleLongPress() {
        if longPressRecognizer.state == .began {
            self.becomeFirstResponder()
            
            let location = longPressRecognizer.location(in: mapView)
            print("location: \(location)")
            print("CLCoordinate: \(mapView.convert(location, toCoordinateFrom: mapView))")
            
            let touchCoordinate = mapView.convert(location, toCoordinateFrom: mapView)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = touchCoordinate
            annotations.append(annotation)
            
            DispatchQueue.main.async {
                print("annotations: \(self.annotations)")
                self.mapView.addAnnotations(self.annotations)
            }
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseId = "pin"

        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView

        if pinView == nil {
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            pinView?.animatesDrop = true
        } else {
            pinView?.annotation = annotation
            
        }
        return pinView
    }
    
//    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
//        print("didSelect")
//        let pinView = view
//        if let coordinate = view.annotation?.coordinate {
//            pinView.canShowCallout = true
//            let label = UILabel()
//            label.text = "\(coordinate.longitude), \(coordinate.latitude)"
//            pinView.leftCalloutAccessoryView = label
//            print("\(coordinate.longitude), \(coordinate.latitude)")
//        }
    
        
//    }g


}


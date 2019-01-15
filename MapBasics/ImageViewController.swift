//
//  ImageViewController.swift
//  MapBasics
//
//  Created by Tim Ng on 1/15/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var selectedUserLocation: UserLocation?
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        label.text = "(\(selectedUserLocation?.latitude), \(selectedUserLocation?.longtitude))"
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([

            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
 
        ])
        
        
    }
}

//
//  UserLocation.swift
//  MapBasics
//
//  Created by Tim Ng on 1/15/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import Foundation

struct UserLocation {
    var latitude: Double? = UserLocationConstants.Latitude
    var longtitude: Double? = UserLocationConstants.Longitude
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longtitude = longitude
    }
}

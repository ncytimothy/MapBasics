//
//  UserLocationStorage.swift
//  MapBasics
//
//  Created by Tim Ng on 1/15/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import Foundation

class SharedData {
    static let sharedInstance = SharedData()
    var UserLocations = [UserLocation]()
    
    // Empty initializer
    public init() {}
}

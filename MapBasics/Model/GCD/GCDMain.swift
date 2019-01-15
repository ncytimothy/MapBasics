//
//  GCDMain.swift
//  MapBasics
//
//  Created by Tim Ng on 1/15/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import Foundation

func performUIUpdatesOnMain(_ updates: @escaping() -> Void) {
    DispatchQueue.main.async {
        updates()
    }
}

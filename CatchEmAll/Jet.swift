//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Jet : Plane {
    
    override func climb() {
        if inFlight == true {
            altitude += maxAltitude * 1/5
            super.decelerate()
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
        }
        else {
            print("I'm too tired to flight!")
        }
    }
    
    override func dive() {
        if inFlight == true {
            altitude -= maxAltitude * 1/5
            super.accelerate()
            if altitude < 0.00 {
                altitude = 0.00
            }
        }
        else {
            print("I'm too tired to flight!")
        }
    }
    
    func afterburner() {
        if inFlight == true && speed == maxSpeed {
            speed = speed * 2
        }
    }
    
}

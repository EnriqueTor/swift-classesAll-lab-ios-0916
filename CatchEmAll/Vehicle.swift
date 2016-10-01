//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    
    let name : String
    let weight : Double
    let maxSpeed : Double
    var speed : Double
    var heading : Double
    
    init(name:String,weight:Double,maxSpeed:Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        speed = 0.0
        heading = 0.0
    }
    
    enum Transmission {
        case Automatic
        case Manual
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        speed += maxSpeed * (1/10)
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        speed -= maxSpeed * (1/10)
        if speed < 0.0 {
            speed = 0.0
        }
    }
    
    func turnRight() {
        if speed == 0.0 {
            print("I'm parked")
        }
        else {
            heading += 90.00
            if heading > 360 {
                heading -= 360
            }
            speed *= 0.5
        }
    }
    
    func turnLeft() {
        if speed == 0.0 {
            print("I'm parked")
        }
        else {
            heading += 270
            if heading > 360 {
                heading -= 360
            }
            speed -= speed/1/2
        }
    }
    
    
    
}

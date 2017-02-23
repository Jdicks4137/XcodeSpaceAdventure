// Josh Dickey 2/23/17
// this file creates the planetary system that the user is visiting 
//
//  planetarySystem.swift
//  SpaceAdventure
//
//  Created by Josh on 2/16/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

class PlanetarySystem {

    let name: String
    let planets: [Planet]
    
    init (name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
        
    }
    
    var randomPlanet: Planet? {
        if planets.isEmpty { // if there are no planets in the system
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(planets.count))) // enables the program to select a random planet
            return planets[index]
        }
    }
}
    


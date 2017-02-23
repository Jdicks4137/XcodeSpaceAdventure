// Josh Dickey 2/23/17
// this file describes different parts of the space adventure
//
//  spaceadventure.swift
//  SpaceAdventure
//
//  Created by Josh on 2/14/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

class spaceAdventure {
    
    let planetarySystem: PlanetarySystem // creates a variable called planetarySystem
    
    init(planetarySystem: PlanetarySystem) {
        self.planetarySystem = planetarySystem
        
    }
    
    
    func start() { // the first part of the space adventure
        displayIntroduction()
        greetAdventurer()
        print("Lets go on an adventure!")
        determineDestination()
        
    }
    private func displayIntroduction() {
        print("Welcome to the\(planetarySystem.name)")
        print("There are \(planetarySystem.planets.count) in our solar system")
        
    }
    private func responseToPrompt(prompt: String) ->String { // enables user to enter something into the running program
        print(prompt)
        return getln()
    
    }
    
    private func greetAdventurer() {
        let name = responseToPrompt(prompt: "what is your name")
        print("Nice to meet you \(name). I am Chiedu's mom.")
    }
    
    private func determineDestination() {
        
        var decision = ""
        
        while !(decision == "Y" || decision == "N" || decision == "y" || decision == "n") {
            decision = responseToPrompt(prompt: "Shall I choose a random planet to visit? (Y or N)")
            if decision == "Y" || decision == "y" { // if the user presses Y or y, the program will go to a random planet
                visit(planetName: (planetarySystem.randomPlanet?.name)!)
            } else if (decision == "N" || decision == "n") { // if the user presses N or n, the program will ask the user to determine the planet they want to travel to
                let planetName = responseToPrompt(prompt: "Ok. Which planet do you want to travel to?")
                visit(planetName: planetName)
            } else { // if the user does not enter Y, y, N, or n, the user will be asked to enter an actual response
                print("(facepalm)")
            }
        }

    }
    
    private func visit(planetName: String) { 
        var found = false
        for planet in planetarySystem.planets {
            if planetName == planet.name {
                found = true // if the planet does exist, the program will enter the planet name and description
                print("traveling to \(planetName)...")
                print("Arriving at \(planet.name). \(planet.description)")
                break
        
            
            }
        
        }
        if found == false{ // if the planet does not exist, the program will inform the user the planet does not exist
            print("Sorry you're wrong")
            
        }
        
    }
}

    


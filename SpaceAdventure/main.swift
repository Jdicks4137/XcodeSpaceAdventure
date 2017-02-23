// Josh Dickey 2/23/17
// This program allows the user to tell the program his or her name, and has the program take the user on an adventure
// This file creates a list of planets and descriptions, and runs the program
/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

let systemName = "solar system"

let planetData = ["Mercury": "Hot and Rocky (like Chiedu's mom), closest to the sun",
"Venus": "Hottest plannet in our solar system, second closest to the sun",
"Earth": "The planet we live on, third closest to the sun",
"Mars": "Another hot planet fourth closest to the sun",
"Jupiter": "Fat and Gassy, largest planet in our solar system",
"Saturn": "the planet with the rings",
"Uranus": "Brian likes the name of this planet",
"Neptune": "Cold planet farthest from sun"]


let planets = planetData.map { name, description in // Finds the planet name and description in planetData
   Planet(name: name, description: description)
}



let solarSystem = PlanetarySystem(name: systemName, planets: planets) // creates a solar system

let adventure = spaceAdventure(planetarySystem: solarSystem) // creates the adventure
adventure.start() // runs the program


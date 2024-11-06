//
//  TeamStandings.swift
//  F1TeamStandingsPieChart
//
//  Created by Nikita Zhdanov on 2024-11-06.
//

import Foundation

struct Team: Identifiable {
    let id = UUID()
    
    let name: String
    let points: Int
}

let mclaren = Team(name: "Mclaren", points: 593)
let ferrari = Team(name: "Ferrari", points: 557)
let redbull = Team(name: "Red-Bull", points: 544)
let mercedes = Team(name: "Mercedes", points: 382)
let astonMartin = Team(name: "Aston Martin", points: 86)
let alpine = Team(name: "Alpine", points: 49)
let haas = Team(name: "Haas", points: 46)
let rb = Team(name: "VCARB", points: 44)
let williams = Team(name: "Williams", points: 17)
let zauber = Team(name: "Zauber", points: 0)

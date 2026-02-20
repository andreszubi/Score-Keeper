//
//  Scoreboard.swift
//  Score Keeper
//
//  Created by Andres Zubizarreta on 2/20/2026.
//

import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "John", score: 0),
        Player(name: "Jan", score: 0),
        Player(name: "Max", score: 0)
        ]
    
    var state = GameState.setup
}

//
//  Player.swift
//  Score Keeper
//
//  Created by Andres Zubizarreta on 2/20/2026.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}

//
//  ContentView.swift
//  Score Keeper
//
//  Created by Andres Zubizarreta on 2/20/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var scoreboard = Scoreboard()
    @State private var players: [Player] = [
        Player(name: "John", score: 0),
        Player(name: "Jan", score: 0),
        Player(name: "Max", score: 0),
    ]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($scoreboard.players) { $player in
                    GridRow {
                        TextField("Enter Player Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add Player", systemImage: "plus.circle.fill") {
                scoreboard.players.append(Player(name: "", score: 0))
            }
            
            Spacer()
            
            switch scoreboard.state {
            case .setup:
                Button("Start Game", systemImage: "play.fill") {
                    scoreboard.state = .playing
                }
            default:
                EmptyView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

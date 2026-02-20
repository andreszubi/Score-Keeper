//
//  ContentView.swift
//  Score Keeper
//
//  Created by Andres Zubizarreta on 2/20/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [String] = ["John", "Jan", "Max"]
    @State private var scores: [Int] = [0, 0, 0]
    
    var body: some View {
        VStack {
            ForEach(0..<players.count, id: \.description) { index in
                TextField("Enter Player Name", text: $players[index])
                Stepper("\(scores[index])", value: $scores[index])
            }
            
            Button("Add Player", systemImage: "plus.circle.fill") {
                players.append("")
                scores.append(0)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  F1TeamStandingsPieChart
//
//  Created by Nikita Zhdanov on 2024-11-06.
//

import SwiftUI
import Charts

let dataset = [
    mclaren, ferrari, redbull, mercedes, astonMartin, alpine, haas, rb, williams, zauber
]

struct ContentView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(dataset) { team in
                    SectorMark(
                        angle: .value("Points", team.points),
                        outerRadius: team.name == "Mclaren" ? 180 : 160,
                        angularInset: 1
                    )
                    .annotation(position: .overlay) {
                        if team.points >= 382 {
                            Text("\(team.points)")
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                        }
                    }
                    .foregroundStyle(by: .value("Team", team.name))
                    .cornerRadius(10)
                }
                    
            }
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    ContentView()
}

//
//  ListLayoutView.swift
//  Moonshot
//
//  Created by Vladyslav Dikhtiaruk on 24/03/2024.
//

import SwiftUI

struct ListLayoutView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack(spacing: 20){
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text(mission.displayName)
                            .font(.title3.bold())
                            .foregroundStyle(.white)
                        
                        Text(mission.formattedLaunchData)
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }
            }
            .listRowBackground(Color.darkBackground)
            .listRowSeparator(.visible, edges: .all)
            .listRowSeparatorTint(.lightBackground)
        }
        .listStyle(.plain)
    }
}

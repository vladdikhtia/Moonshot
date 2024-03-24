//
//  AstronautDetailsView.swift
//  Moonshot
//
//  Created by Vladyslav Dikhtiaruk on 24/03/2024.
//

import SwiftUI

struct AstronautDetailsView: View {
    let astronaut: Astronaut
    var body: some View {
        ScrollView(.vertical){
            VStack{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 25))
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautDetailsView(astronaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}

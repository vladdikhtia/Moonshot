//
//  ContentView.swift
//  Moonshot
//
//  Created by Vladyslav Dikhtiaruk on 22/03/2024.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

    let missions: [Mission] = Bundle.main.decode("missions.json")

    @State private var showingList = false
    var body: some View {
        NavigationStack {
            Group{
                if showingList {
                    ListLayoutView(astronauts: astronauts, missions: missions)
                        
                    } else {
                        GridLayoutView(astronauts: astronauts, missions: missions)
                    }
            }
            .toolbar(content: {
                Button {
                    withAnimation(.spring()) {
                        showingList.toggle()
                    }
                } label: {
                    Image(systemName: showingList ? "square.grid.2x2.fill" : "list.bullet" )
                        .foregroundStyle(.white)
                }
            })
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}

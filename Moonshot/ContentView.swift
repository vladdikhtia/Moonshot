//
//  ContentView.swift
//  Moonshot
//
//  Created by Vladyslav Dikhtiaruk on 22/03/2024.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")

    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}

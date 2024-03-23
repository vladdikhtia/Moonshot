//
//  Mission.swift
//  Moonshot
//
//  Created by Vladyslav Dikhtiaruk on 23/03/2024.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }

    let id: String
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}


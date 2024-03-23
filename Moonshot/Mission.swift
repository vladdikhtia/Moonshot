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
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }

    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchData: String {
        launchDate?.formatted(date: .long, time: .omitted) ?? "N/A"
    }
}



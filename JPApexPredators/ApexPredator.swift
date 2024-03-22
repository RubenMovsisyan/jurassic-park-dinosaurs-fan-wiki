//
//  ApexPredatorModel.swift
//  JPApexPredators
//
//  Created by Ruben Movsisyan on 3/20/24.
//

import Foundation
import SwiftUI

struct ApexPredator: Decodable, Identifiable {
    let id: Int
    let name: String
    let type: PredatorType
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScenes]
    let link: String
    
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "")
    }
    
    struct MovieScenes: Decodable, Identifiable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
}

enum PredatorType: String, Decodable, CaseIterable, Identifiable {
    var id: PredatorType { self }
    
    case all, land, air, sea
    
    var background: Color {
        switch self {
        case .all:
            .black
        case .land:
            .brown
        case .air:
            .teal
        case .sea:
            .blue
        }
    }
    
    var icon: String {
        switch self {
        case .all:
            "square.stack.3d.up.fill"
        case .land:
            "leaf.fill"
        case .air:
            "wind"
        case .sea:
            "drop.fill"
        }
    }
}



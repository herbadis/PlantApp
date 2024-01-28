//
//  PlantType.swift
//  PlantApp
//
//  Created by Herb Adis on 1/27/24.
//

import Foundation
import SwiftUI

enum PlantType: String, CaseIterable, Identifiable {
    var id: String { rawValue }
    
    case anthurium = "Anthurium"
    case philodendron = "Philodendron"
    case hoya = "Hoya"
    case aristilochia = "Aristilochia"
    case raphidophora = "Raphidophora"
    
    func identificationColor() -> Color {
        switch self {
        case .anthurium: return Color.red
        default: return Color.blue
        }
    }
}

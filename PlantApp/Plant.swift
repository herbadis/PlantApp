//
//  Plant.swift
//  PlantApp
//
//  Created by Herb Adis on 1/27/24.
//

import Foundation
struct Plant: Identifiable {
    let schedule: ScheduleType
    let name: String
    
    var id: UUID = UUID()
    
    enum ScheduleType {
        case justWatered
        case waterSoon
        case waterNow
    }
}

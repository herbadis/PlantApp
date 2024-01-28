//
//  ContentView.swift
//  PlantApp
//
//  Created by Herb Adis on 1/27/24.
//

import SwiftUI

struct PlantList: View {
    let plants: [Plant]
    
    var body: some View {
        List(plants) { plant in
            NavigationLink {
                PlantTypeChooserView()
            } label: {
                PlantCell(plant: plant)
            }
        }
    }
}

struct PlantCell: View {
    let plant: Plant
    
    var body: some View {
        HStack {
            Circle()
                .fill(.brown)
                .frame(width: 30.0, height: 30.0)
            Spacer()
            Image(systemName: "leaf")
                .resizable()
                .frame(width: 30.0, height: 30.0)
            Text(plant.name)
            Spacer()
        }
    }
}

struct ContentView: View {
    @State var plants: [Plant]
        
    var body: some View {
        NavigationView {
            PlantList(plants: plants)
                .toolbar {
                    Button {
                        didTapAddButton()
                    } label: {
                        Image(systemName: "plus")
                    }

                }
        }

    }
    
    func didTapAddButton() {
        let newPlant = Plant(schedule: .justWatered, name: "New Plant")
        plants.append(newPlant)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(plants: [
            Plant(schedule: .justWatered, name: "Window Plant"),
            Plant(schedule: .justWatered, name: "Door Plant"),
        ])
    }
}

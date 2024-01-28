//
//  PlantTypeChooser.swift
//  PlantApp
//
//  Created by Herb Adis on 1/27/24.
//

import SwiftUI

struct PlantTypeChooserView: View {
    var body: some View {
        List(PlantType.allCases) { type in
            Text(type.rawValue)
        }
        
        
    }
    
}

struct PlantTypeChooserView_Previews: PreviewProvider {
    static var previews: some View {
        PlantTypeChooserView()
    }
}


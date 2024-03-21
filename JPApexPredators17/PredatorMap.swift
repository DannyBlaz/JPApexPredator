//
//  PredatorMap.swift
//  JPApexPredators17
//
//  Created by Daniel Ezekiel on 3/20/24.
//

import SwiftUI
import MapKit

struct PredatorMap: View {
    let predators = Predators()
    
    @State var position: MapCameraPosition
    
    var body: some View {
        Map(position: $position){
            ForEach(predators.apexPredators){ predator in
                Annotation(predator.name, coordinate: predator.location){
                    Image(predator.image)
                }
            }
        }
    }
}

#Preview {
    PredatorMap(position: .camera(MapCamera(centerCoordinate: Predators().apexPredators[2].location, distance: 1000, heading: 250, pitch: 80)))
        .preferredColorScheme(.dark)
}

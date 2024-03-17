//
//  ContentView.swift
//  JPApexPredators17
//
//  Created by Daniel Ezekiel on 3/17/24.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    
    var body: some View {
        List(predators.apexPredators) { predador in
            HStack{
                //Dinosaur image
                Image(predador.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .shadow( color: . white, radius: 1)
                
                VStack(alignment: .leading) {
                    // Name
                    Text(predador.name)
                        .fontWeight(.bold)
                    
                    // Type
                    Text(predador.type.rawValue.capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 13)
                        .padding(.vertical, 5)
                        .background(predador.type.background)
                        .clipShape(.capsule)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}

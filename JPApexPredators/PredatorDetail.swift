//
//  PredatorDetail.swift
//  JPApexPredators
//
//  Created by Ruben Movsisyan on 3/21/24.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                ZStack(alignment: .bottomTrailing) {
                    Image(predator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: geo.size.width / 1.5,
                               height: geo.size.height / 3)
                        .scaleEffect(x: -1)
                        .shadow(color: .black, radius: 7)
                        .offset(y: 20)
                }
                
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    PredatorDetail(predator: Predators().apexPredators[3])
}

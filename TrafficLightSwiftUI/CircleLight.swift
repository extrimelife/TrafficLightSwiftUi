//
//  CircleLight.swift
//  TrafficLightSwiftUI
//
//  Created by roman Khilchenko on 19.10.2022.
//

import SwiftUI

struct CircleLight: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleLight_Previews: PreviewProvider {
    static var previews: some View {
        CircleLight(color: .red, opacity: 0)
        
        
    }
}

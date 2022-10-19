//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by roman Khilchenko on 19.10.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 120, height: 60)
                .font(.title)
                .foregroundColor(Color.white)
                .background(.blue, in: Capsule())
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}

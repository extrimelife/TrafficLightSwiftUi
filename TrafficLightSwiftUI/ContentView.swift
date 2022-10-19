//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by roman Khilchenko on 18.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    @State private var currentTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleLight(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                CircleLight(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                CircleLight(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                Spacer()
                ButtonView(title: currentTitle) {
                    if currentTitle == "START" {
                        currentTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            
        }
    }
}


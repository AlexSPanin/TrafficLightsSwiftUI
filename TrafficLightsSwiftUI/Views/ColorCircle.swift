//
//  Circle.swift
//  TrafficLightsSwiftUI
//
//  Created by Александр Панин on 15.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let bright: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(bright ? 1 : 0.3)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(color: .white, radius: 15)
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, bright: true)
    }
}

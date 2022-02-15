//
//  LigthsCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Александр Панин on 15.02.2022.
//

import SwiftUI

struct LigthsCircle: View {
    @State var countPressed: Int = 0
   
    var body: some View {
        
        VStack(alignment: .center, spacing: 5) {
            Spacer(minLength: 50)
            ColorCircle(color: .red, bright: countPressed == 1 ? true : false)
            ColorCircle(color: .yellow, bright: countPressed == 2 ? true : false)
            ColorCircle(color: .green, bright: countPressed == 3 ? true : false)
            Spacer(minLength: 200)
            ColorButton(countPressed: $countPressed)
            Spacer(minLength: 50)
        }
    }
}

struct LigthsCircle_Previews: PreviewProvider {
    static var previews: some View {
        LigthsCircle(countPressed: 0)
    }
}

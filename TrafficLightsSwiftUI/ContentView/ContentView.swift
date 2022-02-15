//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Александр Панин on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
            LigthsCircle(countPressed: 0)
                .padding(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Button.swift
//  TrafficLightsSwiftUI
//
//  Created by Александр Панин on 15.02.2022.
//

import SwiftUI

struct ColorButton: View {
    @Binding var countPressed: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 104, height: 54, alignment: .center)
                .foregroundColor(.white)
                .cornerRadius(20)
            
            Button(action: {
                if countPressed == 3 {
                    countPressed = 0
                } else {
                    countPressed += 1
                }
            })
            {
                Text( countPressed == 0 ? "Start" : "Next")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .frame(width: 100, height: 50, alignment: .center)
                    .background(.blue)
                    .cornerRadius(20)
            }
        }
    }
}

//struct Button_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        ColorButton(countPressed: $countPressed)
//    }
//}

//
//  ContentView.swift
//  Animations
//
//  Created by Abdul Adhil on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        //binding animation when we increase the value using stepper it will animate
        //but it won't animate when we press the button because the button value is not binded to animation
        Stepper("Select amount", value: $animationAmount.animation(
            .easeInOut(duration: 1)
            .repeatCount(3, autoreverses: true)
        ), in: 1...10)
        
        Spacer()
        
        Button("Tap Me"){
            animationAmount  += 1
        }
        .padding(40)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
    }
}

#Preview {
    ContentView()
}

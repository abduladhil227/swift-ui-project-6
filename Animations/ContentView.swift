//
//  ContentView.swift
//  Animations
//
//  Created by Abdul Adhil on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    @State private var secondAnimationAmount = 1.0
    
    var body: some View {
        Button("Tap Me!"){
            animationAmount += 1
            
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
        //implicit animation
//        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
        .animation(
            .easeInOut(duration: 2)
//            .delay(1),
                .repeatCount(3, autoreverses: true),
            value: animationAmount)
        
        Button("Tap Me!"){
//            animationAmount += 1
            
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(secondAnimationAmount)
                .opacity(2 - secondAnimationAmount)
                .animation(.easeInOut(duration: 1)
                    .repeatForever(autoreverses: false), value: secondAnimationAmount)
            
        )
        .onAppear{
            secondAnimationAmount = 2
        }
    }
}

#Preview {
    ContentView()
}

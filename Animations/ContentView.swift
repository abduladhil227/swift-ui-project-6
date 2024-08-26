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
        Button("Tap Me!"){
            animationAmount += 1
            
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        //implicit animation
        .animation(.default, value: animationAmount)
        
    }
}

#Preview {
    ContentView()
}

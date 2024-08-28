//
//  ContentView.swift
//  Animations
//
//  Created by Abdul Adhil on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me"){
                withAnimation{
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed{
                Rectangle()
                    .fill(.red)
                    .frame(width: 200,height: 200)
                    .transition(.asymmetric(insertion: .opacity, removal: .scale))
                    //.transition(.scale)
            }
        }
        
    }
}

#Preview {
    ContentView()
}

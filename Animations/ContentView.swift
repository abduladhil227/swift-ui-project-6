//
//  ContentView.swift
//  Animations
//
//  Created by Abdul Adhil on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enable = false
    
    var body: some View {
        Button("Tap Me"){
            enable.toggle()
        }
        .frame(width: 200,height: 200)
        .background(enable ? .blue : .red)
        .foregroundColor(.white)
        .clipShape(.rect(cornerRadius: enable ? 60 : 0))
        .animation(.default, value: enable)
        //order we apply the animation matters
//        .clipShape(.rect(cornerRadius: enable ? 60 : 0))
        
        Button("Tap Me"){
            enable.toggle()
        }
        .frame(width: 200,height: 200)
        .background(enable ? .blue : .red)
        .foregroundColor(.white)
        .animation(nil, value: enable)
        .clipShape(.rect(cornerRadius: enable ? 60 : 0))
        .animation(.spring(Spring(duration: 1,bounce: 0.9)), value: enable)
        
        
    }
}

#Preview {
    ContentView()
}

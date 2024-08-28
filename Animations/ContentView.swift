//
//  ContentView.swift
//  Animations
//
//  Created by Abdul Adhil on 26/08/24.
//

import SwiftUI

struct cornerRotationModifier: ViewModifier {
    
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition{
        .modifier(active: cornerRotationModifier(amount: -90, anchor: .topLeading), identity:cornerRotationModifier(amount: 0, anchor: .topLeading) )
    }
}

struct ContentView: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation{
                isShowingRed.toggle()
            }
        }
        
    }
}

#Preview {
    ContentView()
}

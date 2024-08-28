//
//  ContentView.swift
//  Animations
//
//  Created by Abdul Adhil on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    
    let letters = Array("Abdul Adhil");
    
    @State private var enable = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing:0){
            ForEach(0..<letters.count, id: \.self){ num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(enable ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num)/20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded {_ in 
                    dragAmount = .zero
                    enable.toggle()
                }
        )
    }
}

#Preview {
    ContentView()
}

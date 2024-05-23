//
//  ContentView.swift
//  Concentration
//
//  Created by Toh Bing Cheng on 21/5/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .font(.largeTitle)
        .foregroundStyle(.green)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = Circle()
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
            
        }
        .onTapGesture {
            print("tapped")
            isFaceUp.toggle()
        }
    }
}











#Preview {
    ContentView()
}

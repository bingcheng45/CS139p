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
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
            
        }
    }
}











#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Concentration
//
//  Created by Toh Bing Cheng on 21/5/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻", "🎃", "🕷️", "😈"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .font(.largeTitle)
        .foregroundStyle(.green)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
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

//
//  CounterView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct CounterView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Tap to Increase")
                .font(.largeTitle)
                .padding()
            Button {
                count += 1
            } label: {
                Text("\(count)")
                    .font(.system(size: 200))
                    .foregroundStyle(.white)
                    .padding(50)
                    .background(
                        Circle()
                            .fill(Color.pink.gradient)
                    )
            }
        }
    }
}

#Preview {
    CounterView()
}

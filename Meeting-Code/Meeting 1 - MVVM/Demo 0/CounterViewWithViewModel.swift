//
//  CounterViewWithViewModel.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct CounterViewWithViewModel: View {
    
    // TODO: create @State property of ViewModel
    
    var body: some View {
        VStack {
            Text("Tap to Increase")
                .font(.largeTitle)
                .padding()
            Button {
                // TODO: call function
            } label: {
                // TODO: show the count
                Text("")
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
    CounterViewWithViewModel()
}

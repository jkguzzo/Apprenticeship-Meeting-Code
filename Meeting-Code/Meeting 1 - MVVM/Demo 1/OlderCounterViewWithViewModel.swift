//
//  OlderCounterViewWithViewModel.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct OldCounterViewWithViewModel: View {
    // TODO: make a @StateObject ViewModel property
    
    var body: some View {
        VStack {
            Text("Tap to Increase")
                .font(.largeTitle)
                .padding()
            Button {
                // TODO: call action
            } label: {
                // TODO: show count
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
    OldCounterViewWithViewModel()
}

//
//  animation3.swift
//  Animations
//
//  Created by Md. Masud Rana on 1/22/23.
//

import SwiftUI

struct animation3: View {
    @State private var animaationAmount = 0.0
    var body: some View {
        Button("Tap me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animaationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animaationAmount), axis: (x: 1, y: 0, z: 0))
    }
}

struct animation3_Previews: PreviewProvider {
    static var previews: some View {
        animation3()
    }
}

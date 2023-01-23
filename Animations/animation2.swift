//
//  animation2.swift
//  Animations
//
//  Created by Md. Masud Rana on 1/22/23.
//

import SwiftUI

struct animation2: View {
    @State private var animationAmount = 1.0
    var body: some View {
        VStack {
            Button("Tap me") {
                animationAmount += 1
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .animation(.easeInOut(duration: 1).repeatForever(), value: animationAmount)
    }
}

struct animation2_Previews: PreviewProvider {
    static var previews: some View {
        animation2()
    }
}

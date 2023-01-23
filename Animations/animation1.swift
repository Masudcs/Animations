//
//  animation1.swift
//  Animations
//
//  Created by Md. Masud Rana on 1/22/23.
//

import SwiftUI

struct animation1: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap me") {}
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
            }
            .onAppear {
                animationAmount = 2
            }
    }
}

struct animation1_Previews: PreviewProvider {
    static var previews: some View {
        animation1()
    }
}

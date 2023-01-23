//
//  animation4.swift
//  Animations
//
//  Created by Md. Masud Rana on 1/22/23.
//

import SwiftUI

struct animation4: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(.default, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 50 : 0  ))
        .animation(.interpolatingSpring(stiffness: 20, damping: 1), value: enabled)
        
    }
}

struct animation4_Previews: PreviewProvider {
    static var previews: some View {
        animation4()
    }
}

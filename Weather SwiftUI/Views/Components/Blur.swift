//
//  Blur.swift
//  Weather SwiftUI
//
//  Created by Khalmatov on 29.08.2023.
//

import SwiftUI

class UIBackDropView: UIView {
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}
struct BackDrop: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        UIBackDropView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
struct Blur: View {
    var radius: CGFloat = 3
    var opaque: Bool = true
    var body: some View {
        BackDrop()
            .blur(radius: radius, opaque: opaque)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
        
    }
}

//
//  Extentions.swift
//  Weather SwiftUI
//
//  Created by Khalmatov on 28.08.2023.
//

import SwiftUI

extension Color {
    static let background = LinearGradient(gradient: Gradient(colors: [Color("Background 1"), Color("Background 2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    static let bottomSheetBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(0.26), Color("Background 2").opacity(0.26)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    static let nawBarBackground = LinearGradient(gradient: Gradient(colors: [Color("Backgronud").opacity(0.1), Color("Background 2").opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    static let tabBarBackground = LinearGradient(gradient: Gradient(colors: [Color("Tab Bar Background 1").opacity(0.26), Color("Tab Bar Background 2").opacity(0.26)]), startPoint: .top, endPoint: .bottom)
    
    static let weatherWidgetBackground = LinearGradient(gradient: Gradient(colors: [Color("Weather Widget Background 1"), Color("Weather Widget Background 2")]), startPoint: .leading, endPoint: .trailing)
    
    static let bottomSheetBorderMiddle = LinearGradient(gradient: Gradient(stops: [.init(color: .white, location: 0.0), .init(color: .clear, location: 0.2)]), startPoint: .top, endPoint: .bottom)
    
    static let bottomSheetBorderTop = LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(0.5), Color.white.opacity(0)]), startPoint: .leading, endPoint: .trailing)
 
    static let underLine = LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .white, .white.opacity(0)]), startPoint: .leading, endPoint: .trailing)
    
    static let tabBarBorder = Color("Tab Bar Border").opacity(0.5)
    static let forcastCardBackground = Color("Forcast Card Backgroud")
    static let probabilityText = Color("Probability Text")
    
 }

extension View {
    func backGroudBlur(radius: CGFloat = 3, opaque: Bool = false) -> some View {
        self
            .background(Blur(radius: radius, opaque: opaque))
    }
}

extension View {
    func innerShadow<S: Shape, SS: ShapeStyle>(shape: S, color: SS, lineWidth: CGFloat = 1, ofsetX: CGFloat = 1, offSetY: CGFloat = 1, blur: CGFloat = 4, blendMode: BlendMode = .normal, opacity: Double = 1) -> some View {
        return self
            .overlay {
            //MARK: Bottom Sheet Inner Shadow (Border)
                 shape
                    .stroke(color, lineWidth: lineWidth)
                    .blendMode(blendMode)
                    .offset(x: ofsetX, y: offSetY)
                    .blur(radius: blur)
                    .mask(shape)
                    .opacity(opacity)
             }
        
     }
}

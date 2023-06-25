//
//  Extension.swift
//  BottonSheet
//
//  Created by Enrique Poyato Ortiz on 25/6/23.
//

import SwiftUI

extension Color {
    static let backgroundInnerShadow = LinearGradient(gradient: Gradient(stops: [.init(color: Color.white, location: 0), .init(color: Color.clear, location: 0.2)]), startPoint: .top, endPoint: .bottom)
}


extension View {
    func innerShadow<S: Shape, SS: ShapeStyle>(shape: S, color: SS, lineWidth: CGFloat = 1, offsetX: CGFloat = 90, offsetY: CGFloat = 0, blur: CGFloat = 4, blendMode: BlendMode = .normal, opacity: Double = 1) -> some View {
        return self
            .overlay{
                shape
                    .stroke(color, lineWidth: lineWidth)
                    .offset(x: offsetX, y: offsetY)
                    .blur(radius: blur)
                    .mask(shape)
                    .opacity(opacity)
            }
    }
}

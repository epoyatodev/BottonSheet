//
//  BottomSheetContentView.swift
//  BottonSheet
//
//  Created by Enrique Poyato Ortiz on 25/6/23.
//

import SwiftUI

struct BottomSheetContentView: View {
    var body: some View {
        ScrollView {
            // Replace with your view
            VStack{
                HStack{
                    Text("Content")
                        .frame(minWidth: 0, maxWidth: .infinity)
                    Text("Content")
                        .frame(minWidth: 0, maxWidth: .infinity)

                }
                .padding()
            }
        }
        .background(Blur(radius: 25, opaque: true))
        .clipShape(RoundedRectangle(cornerRadius: 44))
        .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color.backgroundInnerShadow, lineWidth: 1, offsetX: 0, offsetY: 1, blur: 0, blendMode: .overlay, opacity: 1)
        .overlay{
            //MARK: Bottom Sheet Separator
            Divider()
                .blendMode(.overlay)
                .background(Color.white)
                .frame(maxHeight: .infinity, alignment: .top)
                .clipShape(RoundedRectangle(cornerRadius: 44))
        }
        .overlay{
            //MARK: Drag Indicator
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.3))
                .frame(width: 48, height: 5)
                .frame(height: 20)
                .frame(maxHeight: .infinity, alignment: .top)
            
        }
    }
}

struct BottomSheetContentView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetContentView()
            .background(Color.blue)
            .preferredColorScheme(.dark)
    }
}

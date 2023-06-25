//
//  ContentView.swift
//  BottonSheet
//
//  Created by Enrique Poyato Ortiz on 25/6/23.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.83 // 702/844
    case middle = 0.385 // 325/844
    //case minimum = 0.1
    
}

struct ContentView: View {
    @State var bottonSheetPosition: BottomSheetPosition = .middle
    var body: some View {
        ZStack {
            Image(systemName: "globe")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
                .padding()
            
            
            BottomSheetView(position: $bottonSheetPosition) {
                //Text(bottonSheetPosition.rawValue.formatted())
            } content: {
                BottomSheetContentView()
            }

        }
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ForcastView.swift
//  Weather SwiftUI
//
//  Created by Khalmatov on 29.08.2023.
//

import SwiftUI

struct ForcastView: View {
    var body: some View {
        ScrollView {
            
        }
        .backGroudBlur(radius: 25, opaque: true)
        .background(Color.bottomSheetBackground)
        .clipShape(RoundedRectangle(cornerRadius: 44))
        innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color.bottomSheetBorderMiddle, lineWidth: 1, ofsetX: 0, offSetY: 1, blur: 4, blendMode: .overlay, opacity: 1)
        .overlay {
            //MARK: Bottom sheet Seperator
            Divider()
                .blendMode(.overlay)
                .background(Color.bottomSheetBorderTop)
                .frame(maxHeight: .infinity, alignment: .top)
                .clipShape(RoundedRectangle(cornerRadius: 44))
        }
        .overlay {
            //MARK: Drag Indicator 
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black).opacity(0.3)
                .frame(width: 48, height: 5)
                .frame(height: 20)
                .frame(maxHeight: .infinity, alignment: .top)
         }
     }
}

struct ForcastView_Previews: PreviewProvider {
    static var previews: some View {
        ForcastView()
            .background(Color.background)
            .preferredColorScheme(.dark)
    }
}

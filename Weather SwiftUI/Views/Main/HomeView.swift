//
//  HomeView.swift
//  Weather SwiftUI
//
//  Created by Khalmatov on 28.08.2023.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.9
    case middle = 0.385
}
struct HomeView: View {
    
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    
    var body: some View {
        NavigationStack {
            ZStack {
                //MARK: - Background color
                Color.background
                    .ignoresSafeArea()
                
                //MARK: Background Image
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                
                //MARK: Home Image
                Image("House")
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(.top, 257)
                
                //MARK: Currnet Weather
                
                VStack(spacing: 10) {
                    Text("Tashkent")
                        .font(.largeTitle)
                    
                    VStack {
                        Text(attributedString)
                        Text("H:24°   L:18°")
                            .font(.title3.weight(.semibold))
                        
                    }
                    Spacer()
                }
                .padding(.top, 51)
                
                BottomSheetView(position: $bottomSheetPosition) {
                 } content: {
                    ForcastView()
                }
                TabBar(action: {
                    if bottomSheetPosition == .top {
                        bottomSheetPosition = .middle
                    } else {
                        bottomSheetPosition = .top
                    }
                })
            }
            .navigationBarHidden(true)
        }
    }
    
    
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n " + "Mostly Clody")
        if let temp = string.range(of: "19°") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].foregroundColor = .secondary
            string[pipe].font = .title3.weight(.semibold)
        }
        
        if let weather = string.range(of: "Mostly Clody") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        return string
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}

 

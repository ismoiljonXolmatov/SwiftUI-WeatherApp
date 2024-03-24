//
//  Tab Bar.swift
//  Weather SwiftUI
//
//  Created by Khalmatov on 28.08.2023.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    var body: some View {
        ZStack {
            //MARK: Arc
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
             //MARK: Tab Bar Items
            HStack {
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                
                Spacer()
                
                NavigationLink {
                    
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }


            }
            .foregroundColor(.white)
            .font(.title2)
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 25, trailing: 30))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
     }
}

struct Tab_Bar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {})
            .preferredColorScheme(.dark)
    }
}

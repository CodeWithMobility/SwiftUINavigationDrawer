//
//  FavoriteView.swift
//  SwiftUINavigationDrawer
//
//  Created by Manu Aravind on 06/10/24.
//

import SwiftUI

struct FavoriteView: View {
    
    @Binding var isDrawerOpen: Bool
    
    var body: some View {
        VStack{
            ToolbarView(title: "Favorite", iconAction: {
                isDrawerOpen.toggle()
            })
            
            Spacer()
            Text("Favorite View")
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

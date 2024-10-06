//
//  HomeView.swift
//  SwiftUINavigationDrawer
//
//  Created by Manu Aravind on 06/10/24.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var isDrawerOpen: Bool
    
    var body: some View {
        VStack{
            ToolbarView(title: "Home", iconAction: {
                isDrawerOpen.toggle()
            })
            Spacer()
            Text("Home View")
            Spacer()
        }
        
        .padding(.horizontal, 24)
    }
}

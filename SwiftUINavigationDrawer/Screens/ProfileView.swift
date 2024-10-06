//
//  ProfileView.swift
//  SwiftUINavigationDrawer
//
//  Created by Manu Aravind on 06/10/24.
//

import SwiftUI

struct ProfileView: View {
    
    @Binding var isDrawerOpen: Bool
    
    var body: some View {
        VStack{
            ToolbarView(title: "Profile", iconAction: {
                isDrawerOpen.toggle()
            })
            
            Spacer()
            Text("Profile View")
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

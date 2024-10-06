//
//  ChatView.swift
//  SwiftUINavigationDrawer
//
//  Created by Manu Aravind on 06/10/24.
//

import SwiftUI

struct ChatView: View {
    
    @Binding var isDrawerOpen: Bool
    
    var body: some View {
        VStack{
            ToolbarView(title: "Chat", iconAction: {
                isDrawerOpen.toggle()
            })
            
            Spacer()
            Text("Chat View")
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

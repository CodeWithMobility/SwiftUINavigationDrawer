//
//  ContentView.swift
//  SwiftUINavigationDrawer
//
//  Created by Manu Aravind on 05/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDrawerOpen = false
    @State private var selectedNavigationItem = 0
    
    
    var body: some View {
        NavigationView {
            ZStack {
                TabView(selection: $selectedNavigationItem) {
                    HomeView(isDrawerOpen: $isDrawerOpen)
                        .tag(0)
                    FavoriteView(isDrawerOpen: $isDrawerOpen)
                        .tag(1)
                    ChatView(isDrawerOpen: $isDrawerOpen)
                        .tag(2)
                    ProfileView(isDrawerOpen: $isDrawerOpen)
                        .tag(3)
                }
                // Fullscreen overlay to dim background when drawer is open
                if isDrawerOpen {
                    Color.black.opacity(0.5)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                isDrawerOpen = false
                            }
                        }
                }
                
                // Drawer
                NavigationMenu(isShowing: $isDrawerOpen, content: AnyView(DrawerView(selectedNavigationItem: $selectedNavigationItem, isDrawerOpen: $isDrawerOpen)))
            }
            .gesture(
                DragGesture()
                    .onEnded { value in
                        if value.translation.width > 50 {
                            withAnimation {
                                isDrawerOpen = true
                            }
                        } else if value.translation.width < -50 {
                            withAnimation {
                                isDrawerOpen = false
                            }
                        }
                    }
            )
        }
    }
}


#Preview {
    ContentView()
}

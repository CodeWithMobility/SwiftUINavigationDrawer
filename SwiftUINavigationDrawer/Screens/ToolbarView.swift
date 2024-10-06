//
//  ToolbarView.swift
//  SwiftUINavigationDrawer
//
//  Created by Manu Aravind on 06/10/24.
//

import SwiftUI

struct ToolbarView: View {
    var title: String
    var iconAction: () -> Void
    
    var body: some View {
        HStack {
            Button(action: iconAction) {
                Image(systemName: "line.horizontal.3")
                    .font(.title2).foregroundColor(.green)
            }
            Spacer()
        }
        .background(Color.white) // Background color
        
        .overlay(
            Text(title)
                .font(.headline)
                .lineLimit(1)
        )
    }
}


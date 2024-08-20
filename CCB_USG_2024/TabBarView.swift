//
//  TabBarView.swift
//  CCB_USG_2024
//
//  Created by jun on 8/20/24.
//

import SwiftUI

struct TabBarView: View {
    @State private var viewModel = TabBarViewModel()
    
    var body: some View {
        TabView {
            ForEach(viewModel.tabBarIcons) { tabBarIcon in
                tabBarIcon.view
                    .tabItem {
                        Image(systemName: tabBarIcon.symbol)
                        Text(tabBarIcon.text)
                    }
            }
        }
    }
}

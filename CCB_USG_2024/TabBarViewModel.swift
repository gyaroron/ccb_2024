//
//  TabBarViewModel.swift
//  CCB_USG_2024
//
//  Created by jun on 8/20/24.
//

import SwiftUI

class TabBarViewModel: ObservableObject {
    @Published var tabBarIcons: [TabBarIcon]
    
    init() {
        tabBarIcons = [
            TabBarIcon(symbol: "magnifyingglass", text: "탐색", view: AnyView(PostView())),
            TabBarIcon(symbol: "bookmark", text: "북마크", view: AnyView(Text("북마크"))),
            TabBarIcon(symbol: "bell", text: "알림", view: AnyView(Text("알림"))),
            TabBarIcon(symbol: "ellipsis", text: "더보기", view: AnyView(Text("더보기")))
        ]
    }
}

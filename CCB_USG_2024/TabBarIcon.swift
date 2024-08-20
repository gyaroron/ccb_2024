//
//  TabBarIcon.swift
//  CCB_USG_2024
//
//  Created by jun on 8/20/24.
//

import SwiftUI

struct TabBarIcon: Identifiable {
    var id = UUID()
    let symbol: String
    let text: String
    var isclicked: Bool = false
    let view: AnyView
}

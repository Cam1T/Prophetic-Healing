//
//  HerbModel.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 24/01/2021.
//

import SwiftUI

// MARK: - Herbs Data Model

struct Herb: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

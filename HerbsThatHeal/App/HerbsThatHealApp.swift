//
//  HerbsThatHealApp.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 24/01/2021.
//

import SwiftUI

@main
struct HerbsThatHealApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

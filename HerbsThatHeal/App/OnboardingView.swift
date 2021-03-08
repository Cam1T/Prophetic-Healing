//
//  OnboardingView.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 24/01/2021.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var herbs: [Herb] = herbsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(herbs[0...5]) { item in
                HerbCardView(herb: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(herbs: herbsData)
    }
}

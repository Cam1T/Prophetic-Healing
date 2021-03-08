//
//  HerbsDetailView.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 30/01/2021.
//

import SwiftUI

struct HerbsDetailView: View {
    // MARK: - PROPERTIES
    
    var herb: Herb
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                        HerbHeaderView(herb: herb)
                    
                    
                    VStack(alignment: .leading, spacing: 20){
                        // TITLE
                        Text(herb.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(herb.gradientColors[1])
                        
                        // HEADLINE
                        Text(herb.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        HerbNutrientsView(herb: herb)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(herb.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(herb.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(herb.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                        
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(herb.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct HerbsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HerbsDetailView(herb: herbsData[0])
            .previewDevice("iPhone 11 Pro")
    }
}

//
//  HerbCardView.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 24/01/2021.
//

import SwiftUI

struct HerbCardView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    var herb: Herb
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // HERB: IMAGE
                Image(herb.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .frame(alignment: .center)
                // HERB: TITLE
                Text(herb.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2 , y: 2)
                
                
                // HERB: HEADLINE
                Text(herb.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                
                
                // HERB: START
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: herb.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

// MARK: - PREVIEW

struct HerbCardView_Previews: PreviewProvider {
    static var previews: some View {
        HerbCardView(herb: herbsData[4])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}

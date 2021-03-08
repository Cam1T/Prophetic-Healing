//
//  HerbRowView.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 24/01/2021.
//

import SwiftUI

struct HerbRowView: View {
    // MARK: - PROPERTIES
    
    
    var herb: Herb
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(herb.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: herb.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(herb.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(herb.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        } //: HSTACK
    }
}

struct HerbRowView_Previews: PreviewProvider {
    static var previews: some View {
        HerbRowView(herb: herbsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

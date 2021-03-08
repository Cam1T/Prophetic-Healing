//
//  HerbNutrientsView.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 30/01/2021.
//

import SwiftUI

struct HerbNutrientsView: View {
    // MARK: - PROPERTIES
    
    var herb: Herb
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(herb.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        
                        Spacer(minLength: 25)
                        
                        
                        Text(herb.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX
        
    }
}

struct HerbNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        HerbNutrientsView(herb: herbsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}

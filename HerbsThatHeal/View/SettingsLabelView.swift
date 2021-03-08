//
//  SettingsLabelView.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 31/01/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK:- BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "HerbsThatHeal", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  ContentView.swift
//  HerbsThatHeal
//
//  Created by Cameron Tawiah on 24/01/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    
    var herbs: [Herb] = herbsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(herbs.shuffled()) { item in
                    NavigationLink(destination: HerbsDetailView(herb: item)) {
                        HerbRowView(herb: item)
                            .padding(.vertical, 4)
                        
                    }
                }
            }
            .navigationTitle("Herbs")
            .navigationBarItems(trailing:
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//: Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(herbs: herbsData)
            .previewDevice("iPhone 11 Pro")
    }
}

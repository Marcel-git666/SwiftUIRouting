//
//  Settings.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("SettingsView")
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}

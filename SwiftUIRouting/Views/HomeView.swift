//
//  HomeView.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .font(.system(size: 56))
                .foregroundColor(.accentColor)
            Text("**Home**")
                .font(.system(size: 24))
            
            Button("**Go to Living room**") {
                router.navigate(to: .livingroom)
            }
            .padding(.top, 12)
            
        }
        .navigationDestination(for: Router.Destination.self) { destination in
            router.getViewForDestination(destination)
        }
    }
}

#Preview {
    HomeView()
    
}

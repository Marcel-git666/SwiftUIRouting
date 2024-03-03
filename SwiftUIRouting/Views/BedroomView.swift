//
//  BedroomView.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

struct BedroomView: View {
    @EnvironmentObject var router: Router
    var ownerName: String
    
    var body: some View {
        VStack {
            Text("\(ownerName)'s Bedroom")
                .font(.system(size: 36, weight: .bold))
                .padding(.bottom, 12)
            Image(systemName: "bed.double.fill")
                .font(.system(size: 56))
                .foregroundColor(.accentColor)
            
            Button {
                router.navigateBack()
            } label: {
                Text("Back to **Livingroom**")
            }
            .padding(.top, 12)
            
            Button {
                router.navigateToRoot()
            } label: {
                Text("Pop to **Home**")
            }
            .padding(.top, 4)
            
        }
        .navigationBarBackButtonHidden()
        .padding()
    }
}

#Preview {
    BedroomView(ownerName: "Big Boss")
}

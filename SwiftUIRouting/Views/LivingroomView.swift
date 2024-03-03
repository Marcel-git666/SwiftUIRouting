//
//  LivingroomView.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

struct LivingroomView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Image(systemName: "sofa.fill")
                .font(.system(size: 56))
                .foregroundColor(.accentColor)
            Text("**Livingroom**")
                .font(.system(size: 24))
                .padding(.top, 12)
            
            Button("**Go to Jane's Bedroom**") {
                router.navigate(to: .bedroom(owner: "Jane"))
            }
            .padding(.top, 12)
            
            Button("**Go to John's Bedroom**") {
                router.navigate(to: .bedroom(owner: "John"))
            }
            .padding(.top, 12)
            
            Button {
                router.navigateBack()
            } label: {
                Text("Back")
            }
            .padding(.top, 4)
        }
        .navigationBarBackButtonHidden()
        .padding()
    }
}

#Preview {
    LivingroomView()
}

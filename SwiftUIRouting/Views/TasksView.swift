//
//  TasksView.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        VStack {
            Text("Task View")
            Button("**Go to John's Bedroom**") {
                router.navigate(to: .bedroom(owner: "John"))
            }
            .padding(.top, 12)
        }
    }
}

#Preview {
    TasksView()
}

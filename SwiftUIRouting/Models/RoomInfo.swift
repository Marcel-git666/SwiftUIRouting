//
//  RoomInfo.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import Foundation
import SwiftUI

struct RoomInfo: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image: Image?
    
    static var sampleRoomInfo: RoomInfo = RoomInfo(name: "Sample Room", image: Image(systemName: "house.lodge"))
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

//
//  PaintInfo.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import Foundation

struct PaintInfo: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let author: String
    
    static var samplePaintInfo = PaintInfo(name: "Painting 1", author: "Vincent van Gogh")
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

//
//  Item.swift
//  EXAMEN de NICO
//
//  Created by Mac on 29/4/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

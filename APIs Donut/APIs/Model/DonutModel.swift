//
//  DonutModel.swift
//  APIs
//
//  Created by Vijay Kumar Munukoti on 9/17/24.
//

import Foundation

struct Donut:Codable {
    let id: String
    let type: String
    let name: String
    let ppu: Double
    let batters: Batters
    let topping: [Topping]
    
    struct Batters: Codable {
        let batter: [Batter]
    }
    
    struct Batter: Codable {
        let id: String
        let type: String
    }
    
    struct Topping: Codable {
        let id: String
        let type: String
    }
}

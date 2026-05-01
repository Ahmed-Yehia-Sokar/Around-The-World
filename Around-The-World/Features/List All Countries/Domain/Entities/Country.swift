//
//  Country.swift
//  Around-The-World
//
//  Created by Admin on 01/05/2026.
//

import Foundation

struct Country: Codable {
    let name: Name
    let capital: [String]?
    let currencies: [String: Currency]?
    
    struct Name: Codable {
        let common: String
    }
    
    struct Currency: Codable {
        let name: String
        let symbol: String?
    }
}

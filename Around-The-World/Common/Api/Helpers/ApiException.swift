//
//  Around_The_WorldApp.swift
//  Around-The-World
//
//  Created by Admin on 01/05/2026.
//

import Foundation

struct ApiException: LocalizedError {
    // MARK: - properties
    let statusCode: ApiStatusCode
    
    // MARK: - init method
    init(statusCode: ApiStatusCode) {
        self.statusCode = statusCode
    }
    
    // MARK: - LocalizedError
    var errorDescription: String? {
        return statusCode.description
    }
}

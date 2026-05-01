//
//  Around_The_WorldApp.swift
//  Around-The-World
//
//  Created by Admin on 01/05/2026.
//

import Foundation

protocol ApiClientContract {
    func performRequest<E: ApiRouterContract>(endpoint: E) async throws -> Data
}

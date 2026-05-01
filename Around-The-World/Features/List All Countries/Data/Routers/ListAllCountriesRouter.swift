//
//  ListAllCountriesRouter.swift
//  Around-The-World
//
//  Created by Admin on 01/05/2026.
//

import Foundation

enum ListAllCountriesRouter: ApiRouterContract {
    case fetchAllCountries

    var path: String {
        switch self {
        case .fetchAllCountries:
            return "all?fields=name,capital,currencies"
        }
    }

    var method: String {
        switch self {
        case .fetchAllCountries:
            return "GET"
        }
    }
}

//
//  ListAllCountriesServicesContract.swift
//  Around-The-World
//
//  Created by Admin on 01/05/2026.
//

protocol ListAllCountriesServicesContract {
    func fetchAllCountries() async throws -> [Country]
}

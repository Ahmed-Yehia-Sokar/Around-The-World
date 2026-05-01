//
//  ListAllCountriesUsecaseContract.swift
//  Around-The-World
//
//  Created by Admin on 01/05/2026.
//

protocol ListAllCountriesUsecaseContract {
    func fetchAllCountries() async throws -> [Country]
}

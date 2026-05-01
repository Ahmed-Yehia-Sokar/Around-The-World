//
//  ListAllCountriesServices.swift
//  Around-The-World
//
//  Created by Admin on 01/05/2026.
//

import Foundation

struct ListAllCountriesServicesProvider {
    static func provide() -> ListAllCountriesServices {
        let apiClient = ApiClient()
        return ListAllCountriesServices(apiClient: apiClient)
    }
}

struct ListAllCountriesServices: ListAllCountriesServicesContract {
    // MARK: - Properties
    private let apiClient: ApiClientContract

    // MARK: - Init
    init(apiClient: ApiClientContract) {
        self.apiClient = apiClient
    }

    // MARK: - ListAllCountriesServicesContract
    func fetchAllCountries() async throws -> [Country] {
        let data = try await apiClient.performRequest(endpoint: ListAllCountriesRouter.fetchAllCountries)
        return try JSONDecoder().decode([Country].self, from: data)
    }
}

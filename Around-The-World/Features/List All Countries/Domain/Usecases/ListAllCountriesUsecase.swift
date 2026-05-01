//
//  ListAllCountriesUsecase.swift
//  Around-The-World
//
//  Created by Admin on 01/05/2026.
//

struct ListAllCountriesUsecaseProvider {
    static func provide() -> ListAllCountriesUsecase {
        let services = ListAllCountriesServicesProvider.provide()
        return ListAllCountriesUsecase(services: services)
    }
}

struct ListAllCountriesUsecase: ListAllCountriesUsecaseContract {
    // MARK: - Properties
    private let services: ListAllCountriesServicesContract

    // MARK: - Init
    init(services: ListAllCountriesServicesContract) {
        self.services = services
    }

    // MARK: - ListAllCountriesUsecaseContract
    func fetchAllCountries() async throws -> [Country] {
        try await services.fetchAllCountries()
    }
}

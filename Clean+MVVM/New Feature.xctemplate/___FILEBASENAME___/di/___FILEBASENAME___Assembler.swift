import Foundation
import Swinject

struct ___VARIABLE_productName___Assembler: Assembly {
    func assemble(container: Container) {
        container.register(I___VARIABLE_productName___UseCase.self) { resolver in
            ___VARIABLE_productName___UseCaseImpl(repository: resolver.resolve(I___VARIABLE_productName___Repository.self)!)
                }
        container.register(I___VARIABLE_productName___Repository.self) { resolver in
            ___VARIABLE_productName___RepositoryImpl(remoteDataSource: resolver.resolve(I___VARIABLE_productName___RemoteDataSource.self)!,
                                                     localDataSource: resolver.resolve(I___VARIABLE_productName___LocalDataSource.self)!,
                                                     inMemoryDataSource: resolver.resolve(I___VARIABLE_productName___InMemoryDataSource.self)!)
                }
        container.register(I___VARIABLE_productName___RemoteDataSource.self) { _ in
            ___VARIABLE_productName___RemoteDataSourceImpl()}
        container.register(I___VARIABLE_productName___LocalDataSource.self) { _ in
            ___VARIABLE_productName___LocalDataSourceImpl()}
        container.register(I___VARIABLE_productName___InMemoryDataSource.self) { _ in
            ___VARIABLE_productName___InMemoryDataSourceImpl()}
    }
}

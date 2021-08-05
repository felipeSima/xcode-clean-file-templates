//
//  ___FILEHEADER___
//
import UIKit

struct ___VARIABLE_productName___RepositoryImpl: I___VARIABLE_productName___Repository {
    
    // MARK: - Properties
    let remoteDataSource: I___VARIABLE_productName___RemoteDataSource
    let localDataSource: I___VARIABLE_productName___LocalDataSource
    let inMemoryDataSource: I___VARIABLE_productName___InMemoryDataSource

    // MARK: - Init
    init(remoteDataSource: I___VARIABLE_productName___RemoteDataSource,
         localDataSource: I___VARIABLE_productName___LocalDataSource,
         inMemoryDataSource: I___VARIABLE_productName___InMemoryDataSource) {
        self.remoteDataSource = remoteDataSource
        self.localDataSource = localDataSource
        self.inMemoryDataSource = inMemoryDataSource
    }
    
    //MARK: - Methods
    
}

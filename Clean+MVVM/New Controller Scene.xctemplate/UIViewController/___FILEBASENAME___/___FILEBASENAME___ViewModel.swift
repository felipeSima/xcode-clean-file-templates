//
//  ___FILEHEADER___
//

import Foundation
import Swinject

struct ___VARIABLE_productName:identifier___ViewModel {

    var repository: <#IFeatureRepository#>

    init(resolver: Resolver) {
        self.repository = resolver.resolve(<#IFeatureRepository#>.self)!
    }

}

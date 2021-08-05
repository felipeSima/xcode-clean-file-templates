//
//  ___FILEHEADER___
//
import UIKit
import Swinject
import SkeletonView

class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    
    // MARK: - Variables
    var resolver: Resolver
    var <#___VARIABLE_productName___View#> = ___VARIABLE_productName___View()
    var <#viewModel#>: ___VARIABLE_productName___ViewModel
    // MARK: - Init
    init(resolver: Resolver) {
        self.resolver = resolver
        self.<#viewModel#> = ___VARIABLE_productName___ViewModel(resolver: resolver)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        getData()
    }
    
    // MARK: - Methods
    func setupViewController() {
        // Add here the setup for the UI
    }
    func getData(){
        // Handle the data from the ViewModel
    }
}

// MARK: - CollectionView data source
extension ___VARIABLE_productName:identifier___ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    internal func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return <#numbreOfItens#>
    }

    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: <#reuseIdentifier#>, for: indexPath)
        cell.hideSkeleton()
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Implement onClick cell methods
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: <#width#>, height: <#height#>)
    }
}

// MARK: - Skeleton datasource
extension ___VARIABLE_productName:identifier___ViewController: SkeletonCollectionViewDataSource {
    func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return <#numberOfItens#>
    }

    func collectionSkeletonView(_ skeletonView: UICollectionView, cellIdentifierForItemAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return <#reuseIdentifier#>
    }
}


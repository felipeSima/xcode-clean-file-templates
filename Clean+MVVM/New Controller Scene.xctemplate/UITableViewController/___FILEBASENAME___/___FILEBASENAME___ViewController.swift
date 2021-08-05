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

// MARK: - TableView delegate & datasource
extension ___VARIABLE_productName:identifier___ViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return <#numberOfSections#>
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: <#reuseIdentifier#>, for: indexPath)
        return cell
    }
}

// MARK: - Skeleton View
extension ___VARIABLE_productName:identifier___ViewController: SkeletonTableViewDataSource {
    func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return <#numberOfRowsInSection#>
    }

    func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return <#ReusableCellIdentifier#>
    }
}


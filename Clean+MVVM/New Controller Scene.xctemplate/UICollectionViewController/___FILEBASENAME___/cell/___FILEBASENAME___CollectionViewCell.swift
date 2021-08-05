//
//  ___FILEHEADER___
//
import Foundation
import UIKit

class ___VARIABLE_productName:identifier___CollectionViewCell: UICollectionViewCell {
    // MARK: UI Elements
    private lazy var <#imageView#>: <#UIImageView#> = {
        let <#imageView#> = <#UIImageView#>()
        return <#imageView#>
    }()

    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewConfig()
        addComponents()
        setLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Methods
    func viewConfig() {
        self.isSkeletonable = true
        self.backgroundColor = .clear
    }

    func addComponents() {
        self.contentView.addSubview(<#imageView#>)
    }

    func setLayout() {
        <#imageView#>.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

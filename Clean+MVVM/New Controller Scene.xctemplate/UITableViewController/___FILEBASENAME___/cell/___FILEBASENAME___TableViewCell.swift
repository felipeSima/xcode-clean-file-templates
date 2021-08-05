//
//  ___FILEHEADER___
//
import Foundation
import UIKit
import Kingfisher

class ___VARIABLE_productName:identifier___TableViewCell: UITableViewCell {
    // MARK: UI Elements
    private lazy var <#imageView#>: <#UIImageView#> = {
        let <#imageView#> = <#UIImageView#>()
        return <#imageView#>
    }()

    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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

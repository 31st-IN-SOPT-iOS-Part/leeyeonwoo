import UIKit

import SnapKit
import SwiftyColor
import Then

// MARK: - MusicTableViewCell

final class FriendTableViewCell: UITableViewCell {
    
    // MARK: - Identifier
    
    static let identifier = "FriendTableViewCell"

    // MARK: - UI Components
    
    private let profileContainerView = UIView()
    private let profileImageView = UIImageView()
    private let nameLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 17, weight: .medium)
    }
    
    private let statusLabel = UILabel().then {
        $0.textColor = .systemGray4
        $0.font = .systemFont(ofSize: 15, weight: .medium)
    }
    
//    private lazy var clickableButton: UIButton = {
//        let button = UIButton()
//        button.setBackgroundImage(UIImage(named: "iconClickable"), for: .normal)
//        return button
//    }()

    // MARK: - Life Cycles
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Extensions

extension FriendTableViewCell {
    
    // MARK: - Layout Helpers
    
    private func layout() {
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        
        [profileContainerView, nameLabel, statusLabel].forEach {
            contentView.addSubview($0)
        }
        
        profileContainerView.addSubview(profileImageView)
        profileContainerView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(20)
            $0.width.height.equalTo(58)
        }
        
        profileImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(16)
            $0.leading.equalTo(profileContainerView.snp.trailing).offset(15)
        }
        
        statusLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(4)
            $0.leading.equalTo(nameLabel)
        }
        
//        clickableButton.snp.makeConstraints {
//            $0.centerY.equalToSuperview()
//            $0.trailing.equalToSuperview().offset(-25)
//            $0.width.height.equalTo(24)
//        }
    }
    
    // MARK: - General Helpers
    
    func dataBind(model: FriendModel) {
        nameLabel.text = model.name
        statusLabel.text = model.status
        profileImageView.image = UIImage(named: model.profileImage)
    }
}

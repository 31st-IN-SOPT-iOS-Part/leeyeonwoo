import UIKit

import SnapKit
import SwiftyColor
import Then

// MARK: - MusicCollectionViewCell

final class PhotoCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Identifier
    
    static let identifier = "PhotoCollectionViewCell"
    
    // MARK: - UI Components
    
    private let PhotoContainerView = UIView()
    private let photoImageView = UIImageView()
   
    
    
    // MARK: - Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Extensions

extension PhotoCollectionViewCell {
    
    // MARK: - Layout Helpers
    
    private func layout() {
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        [PhotoContainerView].forEach {
            contentView.addSubview($0)
        }
        
        PhotoContainerView.addSubview(photoImageView)
        PhotoContainerView.addSubview(photoImageView)
        PhotoContainerView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(8)
            $0.centerX.equalToSuperview()
            $0.leading.equalToSuperview().offset(9)
            $0.height.width.equalTo(119)
            
        }
        photoImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            
        }
        
       
        
    }
    
    // MARK: - General Helpers
    
    func dataBind(model: PhotoModel) {
        photoImageView.image = UIImage(named: model.PhotoImage)
    }
}

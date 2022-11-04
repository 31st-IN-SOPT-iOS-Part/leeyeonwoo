import UIKit

import SnapKit
import SwiftyColor
import Then

// MARK: - MusicGridViewController

final class PhotoGridViewController: UIViewController {

    // MARK: - UI Components
    
    let listLabel: UILabel = {
        let label = UILabel()
        label.text = "최근 항목"
        label.font = .systemFont(ofSize: 16)
        return label
        
    }()
    
    let closeButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "iconClose"), for: .normal)
        button.addTarget(self, action: #selector(touchupBackButton), for: .touchUpInside)
        return button
        
    }()
    
    @objc
        private func touchupBackButton() {
            self.dismiss(animated: true, completion: nil)
        }
    
    
    
    let sendButton : UILabel = {
        let button = UILabel()
        button.text = "전송"
        button.font = .systemFont(ofSize: 15)
        return button
        
    }()
    
    private let photoContainerView = UIView()
    private let photoImageView = UIImageView()
    
    private lazy var photoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isScrollEnabled = true
        collectionView.showsVerticalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    // MARK: - Variables
    
    var photoList: [PhotoModel] = [
        PhotoModel(PhotoImage: "Frame 17"),
        PhotoModel(PhotoImage: "galleryImage2"),
        PhotoModel(PhotoImage: "galleryImage3"),
        PhotoModel(PhotoImage: "galleryImage4"),PhotoModel(PhotoImage: "galleryImage5"),PhotoModel(PhotoImage: "galleryImage6"),PhotoModel(PhotoImage: "galleryImage7"),PhotoModel(PhotoImage: "galleryImage8"),PhotoModel(PhotoImage: "galleryImage9"),PhotoModel(PhotoImage: "galleryImage10"),PhotoModel(PhotoImage: "galleryImage11"),PhotoModel(PhotoImage: "galleryImage12"),PhotoModel(PhotoImage: "galleryImage13"),PhotoModel(PhotoImage: "galleryImage14"),PhotoModel(PhotoImage: "galleryImage15"),PhotoModel(PhotoImage: "galleryImage16"),PhotoModel(PhotoImage: "galleryImage17"),PhotoModel(PhotoImage: "galleryImage18"),PhotoModel(PhotoImage: "galleryImage19"),PhotoModel(PhotoImage: "galleryImage20"),PhotoModel(PhotoImage: "galleryImage21"),PhotoModel(PhotoImage: "galleryImage22")
    ]
    
    // MARK: - Constants
    
    final let PhotoInset: UIEdgeInsets = UIEdgeInsets(top: 49, left: 0, bottom: 4, right: 0)
    final let PhotoLineSpacing: CGFloat = 7
    final let PhotoInterItemSpacing: CGFloat = 9
    final let PhotoCellHeight: CGFloat = 119
    
    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
        layout()
    }
}

// MARK: - Extensions

extension PhotoGridViewController {
    
    // MARK: - Layout Helpers
    
    private func layout() {
        view.backgroundColor = .white
        view.addSubview(listLabel)
        view.addSubview(closeButton)
        view.addSubview(sendButton)
        view.addSubview(photoCollectionView)
        
        listLabel.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(5)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
            
        }
        
        closeButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(5)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(10)
            make.width.height.equalTo(24)
        }
        
        sendButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(5)
            make.width.height.equalTo(30)
            make.trailing.equalToSuperview().inset(10)
        }
        
        photoCollectionView.snp.makeConstraints {
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.bottom.equalToSuperview()
            $0.top.equalTo(self.listLabel.snp.bottom).offset(11)
        }
    }
    
    // MARK: - General Helpers
    
    private func register() {
        photoCollectionView.register(
            PhotoCollectionViewCell.self,
            forCellWithReuseIdentifier: PhotoCollectionViewCell.identifier
        )
    }
    
//    //사진들 크기를 어떡할까
//        private func calculateCellHeight() -> CGFloat {
//            let count = CGFloat(photoList.count)
//            let heightCount = count / 2 + count.truncatingRemainder(dividingBy: 2)
//            return heightCount * PhotoCellHeight + (heightCount - 1) * PhotoLineSpacing + PhotoInset.top + PhotoInset.bottom
//        }
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    extension PhotoGridViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 119, height: 119)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return PhotoLineSpacing
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return PhotoInterItemSpacing
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return PhotoInset
        }
    }
    
    // MARK: -UICollectionViewDataSource
    
    extension PhotoGridViewController: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return photoList.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let photoCell = collectionView.dequeueReusableCell(
                withReuseIdentifier: PhotoCollectionViewCell.identifier, for: indexPath)
                    as? PhotoCollectionViewCell else { return UICollectionViewCell() }
            photoCell.dataBind(model: photoList[indexPath.item])
            return photoCell
        }
    }


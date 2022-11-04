//
//  ListViewController.swift
//  2nd_seminar
//
//  Created by YEONOO on 2022/10/12.
//


import UIKit
import SnapKit

class FriendListViewController: UIViewController {
    
    // MARK: - UI Components
    
    let listLabel: UILabel = {
        let label = UILabel()
        label.text = "친구"
        label.font = .boldSystemFont(ofSize: 22)
        return label
        
    }()
    
    let settingButton : UIButton = {
        let button = UIButton()
        //        button.backgroundColor = .gray
        button.setImage(UIImage(named: "settings 1"), for: .normal)
        return button
        
    }()
    
    let profileButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "friendtab_profileImg"), for: .normal)
        button.addTarget(self, action: #selector(detailVC), for: .touchUpInside)
        return button
    }()
    
    @objc
    func detailVC(){
            let profilehome = ProfilehomeViewController()
                profilehome.modalPresentationStyle = .fullScreen
            self.present(profilehome, animated: true, completion: nil)
       
        }
//    @objc
//    func detailVC(){
//        let detailVC = ProfilehomeViewController()
//        present(detailVC, animated: true)
//        self.navigationController?.popToRootViewController(animated: true)
//    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "김솝트"
        label.font = .systemFont(ofSize: 16)
        return label
        
    }()
    
    let statusMessegeLabel: UILabel = {
        let label = UILabel()
        label.text = "상태메시지는 여기에"
        label.font = .systemFont(ofSize: 11)
        label.textColor = .systemGray2
        return label
        
    }()
    
    
    private lazy var friendTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .black.withAlphaComponent(0.1)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    // MARK: - Variables
    
    var friendList: [FriendModel] = [
        FriendModel(profileImage: "profileImage1", name: "정솝트", status: "언제볼건데?"),
        FriendModel(profileImage: "profileImage2", name: "안솝트", status: "피곤해요"),
        FriendModel(profileImage: "profileImage3", name: "최솝트", status: "살려줘요"),
        FriendModel(profileImage: "profileImage4", name: "정솝트", status: "살려줘요"),
        FriendModel(profileImage: "profileImage5", name: "강솝트", status: "살려줘요"),
        FriendModel(profileImage: "profileImage6", name: "오솝트", status: "살려줘요"),
        FriendModel(profileImage: "profileImage7", name: "항솝트", status: "살려줘요"),
        FriendModel(profileImage: "profileImage8", name: "최솝트", status: "살려줘요"),
        FriendModel(profileImage: "profileImage9", name: "고솝트", status: "살려줘요"),
        FriendModel(profileImage: "profileImage10", name: "하솝트", status: "살려줘요"),
        
    ]
    
    // MARK: - Life Cycles
    override func viewDidLoad() {
        view.addSubview(listLabel)
        view.addSubview(settingButton)
        view.addSubview(profileButton)
        view.addSubview(nameLabel)
        view.addSubview(statusMessegeLabel)
        super.viewDidLoad()
        register()
        layout()
        
        listLabel.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(5)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(14)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(320)
        }
        
        settingButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(12)
            make.leading.equalTo(self.listLabel.snp.trailing).offset(276)
            make.trailing.equalToSuperview().inset(4)

            
        }
        
        profileButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(59)
            make.leading.equalToSuperview().inset(4)
            make.trailing.equalToSuperview().inset(300)
        }
        
        nameLabel.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(71)
            make.leading.equalTo(self.profileButton.snp.trailing).inset(11)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(200)

            
        }
        
        statusMessegeLabel.snp.makeConstraints{ make in
            make.top.equalTo(self.nameLabel.snp.bottom).offset(5)
            make.leading.equalTo(self.profileButton.snp.trailing).inset(11)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(200)
            make.width.equalTo(1000)

            
        }
    }
    
    
}

// MARK: - Extensions

extension FriendListViewController {
    
    // MARK: - Layout Helpers
    
    private func layout() {
        view.backgroundColor = .white
        view.addSubview(friendTableView)
        friendTableView.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide).offset(124)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            $0.bottom.equalToSuperview()
            $0.height.equalTo(160 * friendList.count)
        }
    }
    
    // MARK: - General Helpers
    
    private func register() {
        friendTableView.register(FriendTableViewCell.self,
                                forCellReuseIdentifier: FriendTableViewCell.identifier
        )
    }
}

// MARK: - UITableViewDelegate

extension FriendListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

// MARK: - UITableViewDataSource

extension FriendListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let friendCell = tableView.dequeueReusableCell(
            withIdentifier: FriendTableViewCell.identifier, for: indexPath)
                as? FriendTableViewCell else { return UITableViewCell() }
        
        friendCell.dataBind(model: friendList[indexPath.row])
        return friendCell
    }

}

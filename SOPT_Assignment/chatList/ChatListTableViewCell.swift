//
//  ListViewController.swift
//  2nd_seminar
//
//  Created by YEONOO on 2022/10/12.
//


import UIKit
import SnapKit

class ChatListViewController: UIViewController {
    
    // MARK: - UI Components
    
    let listLabel: UILabel = {
        let label = UILabel()
        label.text = "채팅"
        label.font = .boldSystemFont(ofSize: 22)
        return label
        
    }()
    
    let listLabel2: UILabel = {
        let label = UILabel()
        label.text = "오픈채팅"
        label.font = .boldSystemFont(ofSize: 22)
        label.textColor = .systemGray4
        return label
        
    }()
    
    let settingButton : UIButton = {
        let button = UIButton()
        //        button.backgroundColor = .gray
        button.setImage(UIImage(named: "settings 1"), for: .normal)
        return button
        
    }()
    
    let adButton : UIButton = {
        let button = UIButton()
        //        button.backgroundColor = .gray
        button.setImage(UIImage(named: "image 1"), for: .normal)
        return button
        
    }()
    
    let plusButton : UIButton = {
        let button = UIButton()
        //        button.backgroundColor = .gray
        button.setImage(UIImage(named: "iconPlus"), for: .normal)
        button.addTarget(self, action: #selector(gridVC), for: .touchUpInside)
        return button
    }()
    
    @objc
    func gridVC(){
        let gridVC = PhotoGridViewController()
        gridVC.modalPresentationStyle = .fullScreen
        self.present(gridVC,animated: true)
        
        
    }
    
    
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
      
        view.addSubview(settingButton)
        view.addSubview(adButton)
        view.addSubview(listLabel)
        view.addSubview(listLabel2)
        view.addSubview(plusButton)
        super.viewDidLoad()
        register()
        layout()
        
        listLabel.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(15)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(14)
            make.width.equalTo(50)
            make.height.equalTo(20)
        }
        
        listLabel2.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(15)
            make.leading.equalTo(self.listLabel.snp.trailing).offset(7)
            make.width.equalTo(200)
            make.height.equalTo(20)
        }
        plusButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(12)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(250)
            make.trailing.equalToSuperview().offset(4)
     
        }
        
        
        settingButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(12)
//            make.leading.equalTo(self.plusButton.snp.trailing).inset(1)
            make.trailing.equalTo(self.plusButton.snp.leading).offset(110)
//            make.trailing.equalToSuperview().inset(4)
        }
        
        
        
        adButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(52)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(16)
        
            make.width.equalTo(1000)
        }
        
        
        
        
    }
    
}

// MARK: - Extensions

extension ChatListViewController {
    
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

extension ChatListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

// MARK: - UITableViewDataSource

extension ChatListViewController: UITableViewDataSource {
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

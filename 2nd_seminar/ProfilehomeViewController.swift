//
//  ProfilehomeViewController.swift
//  2nd_seminar
//
//  Created by YEONOO on 2022/10/12.
//

import UIKit
import SnapKit

class ProfilehomeViewController: UIViewController {
    
    let closeButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named:"profile_closeBtn"),for : .normal)
        button.addTarget(self, action: #selector(close), for:.touchUpInside)
        return button
    }()
    
    @objc
    func close () {
        self.dismiss(animated: true,completion: nil)
    }
    
    
    let profileButton2 : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "friendtab_profileImg"), for: .normal)
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
        
        
        return button
    }()
    
    let nameLabel : UILabel = {
       let name = UILabel()
        name.text = "김솝트"
        return name
        
    }()
    
    
    //talkview//
    let TalkLabel : UILabel = {
        let title = UILabel()
        title.text = "나와의 채팅"
        title.textColor = .white
//        button.setImage(UIImage(named: "profileTalkImg"), for: .normal)
//        button.setTitle("나와의 채팅", for: .normal) //title넣기
////        button.semanticContentAttribute = .
//        button.setTitleColor(.white, for: .normal)
//        button.titleLabel?.font = .boldSystemFont(ofSize: 10)
//        button.imageView?.contentMode = .scaleAspectFit
//        button.contentHorizontalAlignment = .center
////        button.semanticContentAttribute = .forceLeftToRight //<- 중요

        return title
    }()
    
    let talkButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "profileTalkImg"), for: .normal)
//        button.setTitle("프로필 편집", for: .normal) //title넣기
//        button.setTitleColor(.white, for: .normal)
//        button.titleLabel?.font = .boldSystemFont(ofSize: 10)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .center
        return button
    }()
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.view.backgroundColor = .white
//
//        self.view.addSubview(TalkLabel)
//        self.view.addSubview(talkButton)
    
    
    let editButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "profile_editImg"), for: .normal)
        button.setTitle("프로필 편집", for: .normal) //title넣기
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 10)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .center
        return button
    }()
    
    let storyButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "profileStoryImg"), for: .normal)
        button.setTitle("카카오스토리", for: .normal) //title넣기
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 10)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .center
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray3
        view.addSubview(closeButton)
        view.addSubview(profileButton2)
        view.addSubview(nameLabel)
//        view.addSubview(TalkButton)
        view.addSubview(editButton)
        view.addSubview(storyButton)
        
        closeButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(18)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(344)
//            make.width.height.equalTo(21)
            
        }
        
        profileButton2.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(470)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(139)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(self.profileButton2.snp.bottom).offset(8)
            make.trailing.leading.equalTo(self.view.safeAreaLayoutGuide).inset(164)
        }
        
        TalkButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(673)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(273)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(83)
        }
        
        editButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(673)
            make.leading.equalTo(self.TalkButton.snp.leading).inset(77)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(178)
        }
        
        storyButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(673)
            make.leading.equalTo(self.editButton.snp.leading).inset(77)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(81)
        }

        
    }
    

   

}

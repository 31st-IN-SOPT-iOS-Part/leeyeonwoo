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
        button.imageEdgeInsets = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)

        return button
    }()
    
    
    
    let nameLabel : UILabel = {
       let name = UILabel()
        name.text = "김솝트"
        name.font = .systemFont(ofSize: 18)
        name.textColor = .white
        return name
        
    }()
    
    
    //talkview//
    let TalkLabel : UILabel = {
        let title = UILabel()
        title.text = "나와의 채팅"
        title.font = .systemFont(ofSize: 10)
        title.textColor = .white
        return title
    }()
    
    let talkButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "profileTalkImg"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .center
        return button
    }()

    
//edit button//
    let editButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "profile_editImg"), for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 10)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .center
        return button
    }()
    
    let EditLabel : UILabel = {
        let title = UILabel()
        title.text = "프로필 편집"
        title.font = .systemFont(ofSize: 10)
        title.textColor = .white
        return title
    }()
    
    let storyButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "profileStoryImg"), for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 10)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .center
        return button
    }()
    
    let StoryLabel : UILabel = {
        let title = UILabel()
        title.text = "카카오 스토리"
        title.font = .systemFont(ofSize: 10)
        title.textColor = .white
        return title
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray3
        view.addSubview(closeButton)
        view.addSubview(talkButton)
        view.addSubview(profileButton2)
        view.addSubview(nameLabel)
        view.addSubview(TalkLabel)
        view.addSubview(editButton)
        view.addSubview(EditLabel)
        view.addSubview(storyButton)
        view.addSubview(StoryLabel)
        
        closeButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(18)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(344)
//            make.width.height.equalTo(21)
            
        }
        
        profileButton2.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(470)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide).inset(200)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(self.profileButton2.snp.bottom).offset(8)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
        }
        
       
        
        talkButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(673)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(80)
            make.width.equalTo(18)
        }
        
        
        TalkLabel.snp.makeConstraints { make in
            make.top.equalTo(self.talkButton.snp.bottom).offset(4)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(63)
            make.width.equalTo(200)
        }
        
        editButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(673)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
            make.width.equalTo(18)
        }
        
        EditLabel.snp.makeConstraints { make in
            make.top.equalTo(self.editButton.snp.bottom).offset(4)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
            make.width.equalTo(50)
        }
        
        storyButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(673)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(270)
            make.width.equalTo(50)
        }
        
        StoryLabel.snp.makeConstraints { make in
            make.top.equalTo(self.talkButton.snp.bottom).offset(4)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(270)
            make.width.equalTo(200)
        }
        
        

        
    }
    

   

}

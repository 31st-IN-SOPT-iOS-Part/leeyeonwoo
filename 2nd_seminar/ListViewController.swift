//
//  ListViewController.swift
//  2nd_seminar
//
//  Created by YEONOO on 2022/10/12.
//


import UIKit
import SnapKit

class ListViewController: UIViewController {
    
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
            //        button.backgroundColor = .gray
            button.setImage(UIImage(named: "friendtab_profileImg"), for: .normal)
            button.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
            return button
            
        }()
        
    @objc
        func nextpage(){
            let profilehome = ProfilehomeViewController()
            present(profilehome, animated: true)
            
        }
    
    
        


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
 
        
        view.addSubview(listLabel)
        view.addSubview(settingButton)
        view.addSubview(profileButton)
        
        
        listLabel.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(12)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(14)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(320)
//            make.height.equalTo(155)
            
        }
        
        settingButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(12)
            make.leading.equalTo(self.listLabel.snp.trailing).inset(4)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(297)
            make.width.height.equalTo(21)
            
        }
        
        profileButton.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(64)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(14)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(302)
            make.width.height.equalTo(58)

            
        }
        
        
        
        

        
    }
    
//    // 네비게이션
//    func presentToSecondVC(){
//        let secondVC = ProfilehomeViewController()
//        secondVC.modalPresentationStyle = .formSheet
//        self.present(secondVC,animated: true,completion: nil)
//    }
//    func pushToSecondVC(){
//        let secondVC = ProfilehomeViewController()
//        self.navigationController?.pushViewController(secondVC,animated: true)
//    }
//
//    @objc
//    func touchupNextButton(){
//        presentToSecondVC()
//        //pushToSecondVC()
    }


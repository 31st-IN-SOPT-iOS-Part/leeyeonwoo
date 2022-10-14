//
//  FirstViewController.swift
//  1st_assignment
//
//  Created by YEONOO on 2022/10/06.
//

import UIKit
import SnapKit

class JoinViewController: UIViewController {
    
    
    private let mainLabel: UILabel = {
        let label1 = UILabel()
        label1.text="카카오톡을 시작합니다"
        label1.font = .boldSystemFont(ofSize: 20)
        label1.textAlignment = .center
        return label1
        
    }()
    
    
    // 이메일 또는 전화번호
    private let id2TextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.placeholder = "이메일 또는 전화번호"
        return textField
    }()
    
    
    // 비밀번호
    private let paTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.placeholder = "비밀번호"
        return textField
    }()
    
    
    
    
    // 비밀번호 확인
    private let repaTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.placeholder = "비밀번호 확인"
        return textField
    }()
    
 
    // 새로운 카카오계정 만들기
    private let joinButton: UIButton = {
        let button = UIButton()
        button.setTitle("새로운 카카오계정 만들기",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(nextButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc
    func nextButton(){
        let nextpage = popupViewController()
        present(nextpage, animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [mainLabel,id2TextField,paTextField,repaTextField,joinButton]
        components.forEach{
            view.addSubview($0 as! UIView)
        }

        
        mainLabel.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(84)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(89)
        }
            
        id2TextField.snp.makeConstraints{ make in
            make.top.equalTo(self.mainLabel.snp.bottom).offset(116)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            make.height.equalTo(49)
        }
            
            
        paTextField.snp.makeConstraints{ make in
            make.top.equalTo(self.id2TextField.snp.bottom).offset(10)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            make.height.equalTo(49)
        }
        
        repaTextField.snp.makeConstraints{ make in
            make.top.equalTo(self.paTextField.snp.bottom).offset(10)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            make.height.equalTo(49)
        }
        joinButton.snp.makeConstraints{ make in
            make.top.equalTo(self.repaTextField.snp.bottom).offset(26)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            make.height.equalTo(44)
        }
        
        
        
        
        
       
    }
    

   

}



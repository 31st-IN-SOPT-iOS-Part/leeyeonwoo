//
//  FirstViewController.swift
//  1st_assignment
//
//  Created by YEONOO on 2022/10/06.
//

import UIKit

class loginViewController: UIViewController {
    
    
    private let mainLabel: UILabel = {
        let label1 = UILabel()
        label1.text="카카오톡을 시작합니다"
        label1.font = .boldSystemFont(ofSize: 20)
        label1.textAlignment = .center
        return label1
        
    }()
    
    private let subLabel: UILabel = {
        let label2 = UILabel()
        label2.text="사용하던 카카오계정이 있다면 \n 이메일 또는 전화번호로 로그인해 주세요."
        label2.numberOfLines = 2
        label2.textAlignment = .center
        label2.font = .systemFont(ofSize:13,weight: .medium)
        
        return label2
    }()
    
    // 이메일 또는 전화번호
    private let idTextField: UITextField = {
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
        textField.isSecureTextEntry = true
        textField.placeholder = "비밀번호"
        return textField
    }()
    
    // 카카오계정 로그인
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("카카오계정 로그인",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.backgroundColor = .systemGray6
        button.addTarget(self, action: #selector(modal), for: .touchUpInside)
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    @objc
    func modal() {
        let View = popupViewController()
        View.name = idTextField.text ?? " "
        present(View, animated: true)
        
    }
    
    
    
    
    // 새로운 카카오계정 만들기
    private let joinButton: UIButton = {
        let button = UIButton()
        button.setTitle("새로운 카카오계정 만들기",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(testfunction), for: .touchUpInside)
        
        
        return button
    }()
    
    @objc
    func testfunction() {
        let secView = JoinViewController()
        self.navigationController?.pushViewController(secView, animated: true)
      
        
    }
    

    // 비밀번호 찾기
    private let lastButton: UIButton = {
        let button = UIButton()
        button.setTitle("카카오계정 또는 비밀번호 찾기",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        //button.backgroundColor = .systemGray
        return button
    }()
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [mainLabel,subLabel,idTextField,paTextField,loginButton,joinButton,lastButton]
        components.forEach{
            view.addSubview($0 as! UIView)
        }
            
            
            //AutoLayout
            
            mainLabel.snp.makeConstraints{ make in
                make.top.equalTo(self.view.safeAreaLayoutGuide).offset(40)
                make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(89)
            }
                
            subLabel.snp.makeConstraints{ make in
                make.top.equalTo(self.mainLabel.snp.bottom).offset(20)
                make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(68)
            }
                
                
            idTextField.snp.makeConstraints{ make in
                make.top.equalTo(self.subLabel.snp.bottom).offset(60)
                make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
                make.height.equalTo(49)
            }
                    
                    
                    
            paTextField.snp.makeConstraints{ make in
                make.top.equalTo(self.idTextField.snp.bottom).offset(10)
                make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
                make.height.equalTo(49)
            }
                
                
                
                
            loginButton.snp.makeConstraints{ make in
                make.top.equalTo(self.paTextField.snp.bottom).offset(35)
                make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
                make.height.equalTo(44)
                
            }
                    
            joinButton.snp.makeConstraints{ make in
                make.top.equalTo(self.loginButton.snp.bottom).offset(10)
                make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
                make.height.equalTo(44)
            }
                        
        lastButton.snp.makeConstraints{ make in
                make.top.equalTo(self.joinButton.snp.bottom).offset(15)
                make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(99)
                make.height.equalTo(29)
                        }
                        
        }
                    
                    
                    
                    
                    
                    
                    // 네비게이션
                    func presentToSecondVC(){
                        let secondVC = JoinViewController()
                        secondVC.modalPresentationStyle = .formSheet
                        self.present(secondVC,animated: true,completion: nil)
                    }
                    
                    func pushToSecondVC(){
                        let secondVC = JoinViewController()
                        self.navigationController?.pushViewController(secondVC,animated: true)
                    }
                    
                    @objc
                    func touchupNextButton(){
                        // presentToSecondVC()
                        pushToSecondVC()
                    }
                    
                }
                
                

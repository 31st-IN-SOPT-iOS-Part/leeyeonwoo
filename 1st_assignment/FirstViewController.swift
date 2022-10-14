//
//  FirstViewController.swift
//  1st_assignment
//
//  Created by YEONOO on 2022/10/06.
//

import UIKit

class FirstViewController: UIViewController {
    

//메인라벨 선언
    private let mainLabel: UILabel = {
        let label1 = UILabel()
        
        label1.text="카카오톡을 시작합니다"
        label1.font = .boldSystemFont(ofSize: 20)
        label1.textAlignment = .center
        return label1
        
    }()

//서브라벨 선언
    private let subLabel: UILabel = {
        let label2 = UILabel()
        label2.text="사용하던 카카오계정이 있다면 \n 이메일 또는 전화번호로 로그인해 주세요."
        label2.numberOfLines = 2
        label2.textAlignment = .center
        label2.font = .systemFont(ofSize:13,weight: .medium)
        return label2
    }()

    
    // 이메일 또는 전화번호 선언
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.placeholder = "이메일 또는 전화번호"
        return textField
    }()
    
    // 비밀번호 선언
    private let paTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.isSecureTextEntry = true
        textField.placeholder = "비밀번호"
        return textField
    }()
    
    // 카카오계정 로그인 선언
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("카카오계정 로그인",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.backgroundColor = .systemGray6
        button.addTarget(self, action: #selector(modal), for: .touchUpInside)
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    //로그인 버튼 누르면 세번째뷰로 넘어가라 !!
    
    @objc
    func modal() {
        let View = thirdViewController()
        View.name = idTextField.text ?? " "
        present(View, animated: true)
        
    }
    
    
    
    
    // 새로운 카카오계정 만들기 버튼 선언
    private let joinButton: UIButton = {
        let button = UIButton(frame:CGRect(x:80,y:460,width:250,height:42))
        button.setTitle("새로운 카카오계정 만들기",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(testfunction), for: .touchUpInside)
        
        
        return button
    }()
    
    
//누르면 두번째 페이지로 넘어가라 !!
    
    @objc
    func testfunction() {
        let secView = secondViewController()
        self.navigationController?.pushViewController(secView, animated: true)
      
        
    }
    

    // 비밀번호 찾기 버튼 선언(동작안함)
    private let lastButton: UIButton = {
        let button = UIButton(frame:CGRect(x:80,y:500,width:250,height:42))
        button.setTitle("카카오계정 또는 비밀번호 찾기",for: .normal)
        button.setTitleColor(.black, for: . normal)
        //button.backgroundColor = .systemGray
        return button
    }()
    
    
    
    
    
// 자 이제 모든 선언했던 것들이 페이지에 보여져라
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [mainLabel,subLabel,idTextField,paTextField,loginButton,joinButton,lastButton]
        components.forEach{
            view.addSubview($0 as! UIView)
        }

    }
    
    
    
    
    
    
    // 여기부터 이해안됨
    private func presentToSecondVC(){
        let secondVC = secondViewController()
        secondVC.modalPresentationStyle = .formSheet
        self.present(secondVC,animated: true,completion: nil)
    }
    
    private func pushToSecondVC(){
        let secondVC = secondViewController()
        self.navigationController?.pushViewController(secondVC,animated: true)
    }
    
    @objc
    private func touchupNextButton(){
        // presentToSecondVC()
        pushToSecondVC()
    }

}

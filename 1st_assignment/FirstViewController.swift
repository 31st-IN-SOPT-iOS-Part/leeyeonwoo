//
//  FirstViewController.swift
//  1st_assignment
//
//  Created by YEONOO on 2022/10/06.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    private let mainLabel: UILabel = {
        let label1 = UILabel(frame:CGRect(x:100,y:100,width:250,height:30))
        label1.text="카카오톡을 시작합니다"
        label1.font = .boldSystemFont(ofSize: 20)
        return label1
        
    }()
    
    private let subLabel: UILabel = {
        let label2 = UILabel(frame:CGRect(x:120,y:130,width:250,height:30))
        label2.text="사용하던 카카오계정이 있다면"
        label2.font = .systemFont(ofSize:13,weight: .medium)
        return label2
    }()

    
    private let subLabel2: UILabel = {
        let label3 = UILabel(frame:CGRect(x:100,y:150,width:250,height:30))
        label3.text="이메일 또는 전화번호로 로그인해 주세요."
        label3.font = .systemFont(ofSize:13,weight: .medium)
        return label3
    }()
    
    // 이메일 또는 전화번호
    private let idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x:80,y:280,width:250, height:40))
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.placeholder = "이메일 또는 전화번호"
        return textField
    }()
    
    // 비밀번호
    private let paTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x:80,y:350,width:250, height:40))
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.isSecureTextEntry = true
        textField.placeholder = "비밀번호"
        return textField
    }()
    
    // 카카오계정 로그인
    private let loginButton: UIButton = {
        let button = UIButton(frame:CGRect(x:80,y:400,width:250,height:42))
        button.setTitle("카카오계정 로그인",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.backgroundColor = .systemGray6
        button.addTarget(self, action: #selector(modal), for: .touchUpInside)
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    @objc
    func modal() {
        let View = thirdViewController()
        View.name = idTextField.text ?? " "
        present(View, animated: true)
        
    }
    
    
    
    
    // 새로운 카카오계정 만들기
    private let joinButton: UIButton = {
        let button = UIButton(frame:CGRect(x:80,y:460,width:250,height:42))
        button.setTitle("새로운 카카오계정 만들기",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(testfunction), for: .touchUpInside)
        
        
        return button
    }()
    
    @objc
    func testfunction() {
        let secView = secondViewController()
        self.navigationController?.pushViewController(secView, animated: true)
      
        
    }
    

    // 비밀번호 찾기
    private let lastButton: UIButton = {
        let button = UIButton(frame:CGRect(x:80,y:500,width:250,height:42))
        button.setTitle("카카오계정 또는 비밀번호 찾기",for: .normal)
        button.setTitleColor(.black, for: . normal)
        //button.backgroundColor = .systemGray
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [mainLabel,subLabel,subLabel2,idTextField,paTextField,loginButton,joinButton,lastButton]
        components.forEach{
            view.addSubview($0 as! UIView)
        }

        // Do any additional setup after loading the view.
    }
    
    // 네비게이션
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

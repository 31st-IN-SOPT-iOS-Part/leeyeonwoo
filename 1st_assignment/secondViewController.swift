//
//  FirstViewController.swift
//  1st_assignment
//
//  Created by YEONOO on 2022/10/06.
//

import UIKit

class secondViewController: UIViewController {
    
    
    private let mainLabel: UILabel = {
        let label1 = UILabel(frame:CGRect(x:100,y:100,width:250,height:30))
        label1.text="카카오톡을 시작합니다"
        label1.font = .boldSystemFont(ofSize: 20)
        return label1
        
    }()
    
    
    // 이메일 또는 전화번호
    private let id2TextField: UITextField = {
        let textField = UITextField(frame: CGRect(x:80,y:250,width:250, height:40))
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.placeholder = "이메일 또는 전화번호"
        return textField
    }()
    
    
    // 비밀번호
    private let paTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x:80,y:300,width:250, height:40))
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.placeholder = "비밀번호"
        return textField
    }()
    
    
    
    
    // 비밀번호 확인
    private let repaTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x:80,y:350,width:250, height:40))
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize:18,weight:.medium)
        textField.placeholder = "비밀번호 확인"
        return textField
    }()
    
 
    // 새로운 카카오계정 만들기
    private let joinButton: UIButton = {
        let button = UIButton(frame:CGRect(x:80,y:460,width:250,height:42))
        button.setTitle("새로운 카카오계정 만들기",for: .normal)
        button.setTitleColor(.black, for: . normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(nextButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc
    func nextButton(){
        let nextpage = thirdViewController()
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

        // Do any additional setup after loading the view.
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


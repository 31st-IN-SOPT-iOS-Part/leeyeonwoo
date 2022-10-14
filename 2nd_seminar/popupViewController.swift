//
//  SecondViewController.swift
//  1st_seminar
//
//  Created by YEONOO on 2022/10/01.
//

import UIKit

class popupViewController: UIViewController {
    
    var name = "연우"
    
    
    private let resultLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 80, y: 200, width: 300, height: 30))
        
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
        
        
        
    }()
    
    
    private let backButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 150, y: 260, width: 80, height: 30))
        button.setTitle("확인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .medium)
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(reButton), for: .touchUpInside)
        
        return button
    }()
    
    
  
    
    
    var result: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        resultLabel.text = "\(name) 님 \n 환영합니다!"
        let components: [Any] = [resultLabel, backButton]
        components.forEach {
            view.addSubview($0 as! UIView)
            
        }
        
        resultLabel.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(197)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(144)
        }
            
        backButton.snp.makeConstraints{ make in
            make.top.equalTo(self.resultLabel.snp.bottom).offset(117)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            make.height.equalTo(44)
        }
            
    
        
    }
    
    @objc
    func reButton(){
            self.dismiss(animated: true,completion: nil)
    }

}


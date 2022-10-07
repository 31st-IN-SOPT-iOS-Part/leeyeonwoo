//
//  SecondViewController.swift
//  1st_seminar
//
//  Created by YEONOO on 2022/10/01.
//

import UIKit

class thirdViewController: UIViewController {
    
    var name = "ddd"
    
    
    private let resultLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 80, y: 200, width: 300, height: 30))
        
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
        
        
        
    }()
    
    
    private let backButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 150, y: 260, width: 80, height: 30))
        button.setTitle("확인", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
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
        resultLabel.text = "\(name) 님 환영합니다!"
        let components: [Any] = [resultLabel, backButton]
        components.forEach {
            view.addSubview($0 as! UIView)
            
        }
    }
    
    @objc
    func reButton(){
            self.dismiss(animated: true,completion: nil)
    }

}

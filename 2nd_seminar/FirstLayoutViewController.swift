//
//  FirstLayoutViewController.swift
//  2nd_seminar
//
//  Created by YEONOO on 2022/10/08.
//

import UIKit
import SnapKit

class FirstLayoutViewController: UIViewController {
    
    let firstView: UIView = {
       let view = UIView()
        view.backgroundColor = .gray
        return view
        
    }()
    
    let SecondView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemIndigo
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(firstView)
        view.addSubview(SecondView)
        
        
        firstView.snp.makeConstraints{ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(275)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(62)
            make.height.equalTo(155)
            
        }
        
        SecondView.snp.makeConstraints { make in
            make.top.equalTo(self.firstView.snp.bottom).offset(96)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(62)
            make.width.equalTo(109)
            make.height.equalTo(106)
        }
        
        
    }
}

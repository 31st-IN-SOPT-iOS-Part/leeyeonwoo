//
//  ScrollViewController.swift
//  2nd_seminar
//
//  Created by YEONOO on 2022/10/08.
//

import UIKit
import SnapKit

class ScrollViewController: UIViewController {
    
    lazy var containerView = UIScrollView()
    
    let firstView : UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
        
    }()
    
    let secondView : UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        return view
        
    }()
    
    let thirdView : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(containerView)
        containerView.addSubview(firstView)
        containerView.addSubview(secondView)
        containerView.addSubview(thirdView)
        
        containerView.snp.makeConstraints { make in
            make.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        firstView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            make.height.equalTo(337)
        }
        
        secondView.snp.makeConstraints { make in
            make.top.equalTo(self.firstView.snp.bottom).offset(45)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            make.height.equalTo(337)
        }
        
        
        thirdView.snp.makeConstraints { make in
            make.top.equalTo(self.secondView.snp.bottom).offset(45)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            make.height.equalTo(337)
            
            make.bottom.equalToSuperview().offset(-45)
        }
    }
}

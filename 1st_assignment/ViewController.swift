//
//  ViewController.swift
//  1st_assignment
//
//  Created by YEONOO on 2022/10/05.
//

import UIKit

class ViewController: UIViewController {
    
    private let testLabel:UILabel = {
        let label = UILabel(frame: CGRect(x:150,y:400,width: 40,height: 40))
        label.text="안녕"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(testLabel)
    }

}


//
//  ViewController.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/3/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.6, alpha: 0.4)
        view.layer.cornerRadius = 20
        return view
    }()
    
    let subView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 20
        return view
    }()
    
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 20
        return view
    }()
    
    let bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var stackView:UIStackView = {
        let sv = UIStackView(arrangedSubviews: [topView, bottomView])
        sv.axis = .vertical
        sv.distribution = .fillEqually
        sv.spacing = 20
        return sv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupView()
    }
    
    func setup(){
        view.backgroundColor = .white
        title = "Sample one"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupView(){
        
        view.addSubview(mainView)
        mainView.addSubview(subView)
        subView.addSubview(stackView)
        
        mainView.snp.makeConstraints { (make) in
            make.topMargin.left.equalTo(20)
            make.bottomMargin.right.equalTo(-20)
        }
        
        subView.snp.makeConstraints { (make) in
            make.width.height.equalTo(300)
            make.center.equalTo(mainView)
        }
        
        stackView.snp.makeConstraints { (make) in
            make.top.left.equalTo(20)
            make.right.bottom.equalTo(-20)
        }
        
        
    }
    
    
    
    
    
    
    
}


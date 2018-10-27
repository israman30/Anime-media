//
//  ThirdSample.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/3/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit
import SnapKit

extension UIViewController {
    
    func setLabel(_ label: UILabel, text: String){
        label.contentMode = .center
        label.font = UIFont.systemFont(ofSize: 25)
        label.numberOfLines = 0
        label.font = UIFont(name: "ChalkboardSE-Bold", size: 20)
        label.text = "SnapKit is the good 💩 for autolayout"
    }
    
    func setPhoto(_ imageView: UIImageView, photo: String){
        imageView.image = UIImage(named: photo)
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
    }
    
    func setViewcontainer(_ view: UIView){
        view.backgroundColor = UIColor(white: 0.6, alpha: 0.4)
        view.layer.cornerRadius = 20
    }
}

class ThirdSample: UIViewController {
    
    let mainView = UIView()
    let nameLabel = UILabel()
    let erenPhoto = UIImageView()
    let mikasaPhoto = UIImageView()
    let leviPhoto = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
        setView()
    }
}

extension ThirdSample {
    
    func setupNav(){
        view.backgroundColor = .white
        title = "Third Sample"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setView(){
        setViewcontainer(mainView)
        setLabel(nameLabel, text: "SnapKit is the good 💩 for autolayout")
        setPhoto(erenPhoto, photo: "eren")
        setPhoto(mikasaPhoto, photo: "mikasa")
        setPhoto(leviPhoto, photo: "levi")
        view.addSubview(mainView)
        [nameLabel,
         erenPhoto,
         mikasaPhoto,
         leviPhoto].forEach { mainView.addSubview($0) }
        
        mainView.snp.makeConstraints { (make) in
            make.topMargin.equalTo(50)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.bottom.equalTo(-50)
        }
        
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.height.equalTo(80)
        }
        
        erenPhoto.snp.makeConstraints { (make) in
            make.top.equalTo(90)
            make.left.equalTo(10)
            make.width.equalTo(150)
            make.height.equalTo(150)
        }
        
        mikasaPhoto.snp.makeConstraints { (make) in
            make.top.equalTo(90)
            make.right.equalTo(-10)
            make.width.equalTo(150)
            make.height.equalTo(150)
        }
        
        leviPhoto.snp.makeConstraints { (make) in
            make.topMargin.equalTo(250)
            make.centerX.equalTo(mainView)
            make.width.equalTo(250)
            make.height.equalTo(250)
        }
        
    }
}

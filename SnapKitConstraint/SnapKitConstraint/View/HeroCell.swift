//
//  HeroCell.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/5/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit

class FourthCell: UICollectionViewCell {
    
    var scouts: Heroes? {
        didSet {
            guard let photo = scouts?.photo,
                  let profilePhoto = scouts?.profilePhoto,
                  let name = scouts?.name,
                  let comment = scouts?.comment else { return }
            
            heroesPhoto.image = UIImage(named: photo)
            heroesProfilePhoto.image = UIImage(named: profilePhoto)
            nameLabel.text = name
            commentLabel.text = comment
        }
    }
    
    let heroesProfilePhoto: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 50
        iv.layer.borderColor = UIColor.white.cgColor
        iv.layer.borderWidth = 3
        iv.clipsToBounds = true
        return iv
    }()
    
    let heroesPhoto: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        label.textAlignment = .right
        label.textColor = .darkGray
        return label
    }()
    
    let commentContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.2, alpha: 0.5)
        return view
    }()
    
    let commentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(heroesPhoto)
        addSubview(heroesProfilePhoto)
        addSubview(nameLabel)
        heroesPhoto.addSubview(commentContainerView)
        commentContainerView.addSubview(commentLabel)
        
        heroesProfilePhoto.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.top.equalTo(5)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        
        heroesPhoto.snp.makeConstraints { (make) in
            make.top.equalTo(80)
            make.left.equalTo(0)
            make.right.bottom.equalTo(0)
        }
        
        nameLabel.snp.makeConstraints { (make) in
            make.right.equalTo(-10)
            make.height.equalTo(30)
            make.top.equalTo(20)
        }
        
        commentContainerView.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.bottom.right.equalTo(0)
            make.height.equalTo(65)
        }
        
        commentLabel.snp.makeConstraints { (make) in
            make.left.equalTo(5)
            make.right.equalTo(-5)
            make.bottom.equalTo(0)
            make.height.equalTo(commentContainerView)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

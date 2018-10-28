//
//  DetailView.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/27/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit

extension DetailHeros {
    
    func setDetailHeroView(){
        view.backgroundColor = .white
        
        view.addSubview(detailContainerView)
        detailContainerView.addSubview(heroesProfilePhoto)
        view.addSubview(nameLabel)
        view.addSubview(commentDetailView)
        commentDetailView.addSubview(webView)
        commentDetailView.addSubview(commentTextView)
        
        detailContainerView.snp.makeConstraints { (make) in
            make.top.equalTo(140)
            make.left.right.equalTo(view)
            make.height.equalTo(120)
        }
        
        heroesProfilePhoto.snp.makeConstraints { (make) in
            make.centerX.equalTo(detailContainerView)
            make.bottom.equalTo(60)
            make.width.height.equalTo(150)
        }
        
        nameLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(330)
            make.centerX.equalTo(view)
            make.left.right.equalTo(view)
            make.height.equalTo(40)
        }
        
        // MARK: - NSLayoutconstraint
        commentDetailView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        commentDetailView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        commentDetailView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive
            = true
        heightConstraint = commentDetailView.heightAnchor.constraint(equalToConstant: 450)
        
        heightConstraint?.isActive = true
        
        webView.snp.makeConstraints { (make) in
            make.top.left.equalTo(5)
            make.width.equalTo(180)
            make.height.equalTo(80)
        }
        
        commentTextView.snp.makeConstraints { (make) in
            make.topMargin.equalTo(90)
            make.left.equalTo(webView)
            make.right.bottom.equalTo(-5)
        }
    }
}

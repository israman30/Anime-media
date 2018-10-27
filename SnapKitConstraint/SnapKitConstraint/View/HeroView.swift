//
//  HeroView.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/5/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit

extension FourthSample {
    
    /*
     MARK: - Set anchor constraints for Heroes Controller
     ==================================================================================
     1) Set navigationBarButtonItem for sideViewMenu + title and color.
     2) Set collectionView constraints.
     3) Register collectionViewCell with identifier + Delegate and datasource delegation.
     ==================================================================================
     */
    
    func setFourthView(){        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named:"side"), style: .plain, target: self, action: #selector(handleTheme))
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = .white
        title = "Attack on Titan"
        view.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.register(FourthCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.addSubview(sideViewMenu)
        
        collectionView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
       
    }
    
    /*
     MARK: - Set anchor constraints for sideView menu
     ==================================================================================
     1) Set a reference of rightAnchor: NSLayoutConstraint to use it for animation open and close.
     2) Assing to the variable rightAnchor the sideView rightAnchor.
     ==================================================================================
     */
    
    func setSideView(){
        
        sideViewMenu.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        sideViewRightAnchor = sideViewMenu.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 125)
        sideViewRightAnchor?.isActive = true
        
        sideViewMenu.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        sideViewMenu.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        sideViewMenu.addSubview(closeButton)
        
        closeButton.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.centerY.equalTo(200)
            make.width.height.equalTo(40)
            make.bottomMargin.equalTo(closeButton)
        }
        
        let stackView = UIStackView(arrangedSubviews: [firstView,secondView,thirdView])
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 25
        
        sideViewMenu.addSubview(stackView)
        stackView.snp.makeConstraints { (make) in
            make.centerY.equalTo(sideViewMenu)
            make.centerX.equalTo(sideViewMenu)
            make.width.equalTo(80)
            make.height.equalTo(300)
        }
    }
}

extension UIColor {
    
}



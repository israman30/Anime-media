//
//  SideViewAction+Ext.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/10/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit

extension FourthSample {
    
    @objc func handleTheme(){
        if sideViewRightAnchor?.constant == 125 {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.sideViewRightAnchor?.constant = 0
                self.view.layoutIfNeeded()
                self.collectionView.backgroundColor = UIColor(white: 0.2, alpha: 0.5)
            }, completion: nil)
        } else if sideViewRightAnchor?.constant == 0 {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.sideViewRightAnchor?.constant = 125
                self.view.layoutIfNeeded()
                self.collectionView.backgroundColor = UIColor(white: 1, alpha: 1)
            }, completion: nil)
        }
    }
    
    @objc func handleClosingView(){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.sideViewRightAnchor?.constant = 125
            self.view.layoutIfNeeded()
            self.collectionView.backgroundColor = UIColor(white: 1, alpha: 1)
        }, completion: nil)
    }
}

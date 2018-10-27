//
//  FourthSample.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/5/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit
import SnapKit


class FourthSample: UIViewController {
    
    var heroes: [Heroes]!
    
    var sideViewRightAnchor:NSLayoutConstraint?
    
    let collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    lazy var sideViewMenu:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 1, height: 1.5)
        view.layer.shadowOpacity = 2
        view.backgroundColor = UIColor.white
        view.addGestureRecognizer(UISwipeGestureRecognizer(target: self, action: #selector(handleClosingView)))
        return view
    }()
    
    let closeButton: UIButton = {
        let btn = UIButton(type:.system)
        btn.setTitle("close", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(handleClosingView), for: .touchUpInside)
        return btn
    }()
    
    /*
     MARK: - Block of buttons for sideViewMenu.
     ==================================================================================
     1) Play list (firstView).
     2) Settings (secondView).
     3) Gallery (thirdView).
     ==================================================================================
     */
    lazy var firstView = UIImageView()
    lazy var secondView = UIImageView()
    lazy var thirdView = UIImageView()
    
    @objc func handlePlay(){
        let playController = PlayController()
        navigationController?.pushViewController(playController, animated: true)
    }
    
    @objc func handleSettings(){
        let settingsController = SettingsController()
        navigationController?.pushViewController(settingsController, animated: true)
    }
    
    @objc func handleGallery(){
        let galleryController = GalleryController()
        navigationController?.pushViewController(galleryController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setFourthView()
        setSideView()
        heroes = Heroes.shared.fetchHeroes {
            self.collectionView.reloadData()
        }
        setActionViewsForSideViewMenu()
    }
    
    // MARK: - set Actions function for sideViewMenu.
    fileprivate func setActionViewsForSideViewMenu(){
        setActionSideViewMenu(firstView, icon: #imageLiteral(resourceName: "play"), target: #selector(handlePlay))
        setActionSideViewMenu(secondView, icon: #imageLiteral(resourceName: "settings"), target: #selector(handleSettings))
        setActionSideViewMenu(thirdView, icon: #imageLiteral(resourceName: "gallery"), target: #selector(handleGallery))
    }
    
    
}

/*
 MARK: - Extension set action for sideViewMenu.
 ==================================================================================
 This extension has a function that takes an ImageView, icon and target.
 - We enable UI for imageView so user can tap on view and trigger a selector.
 ==================================================================================
 */
extension FourthSample {
    
    func setActionSideViewMenu(_ view: UIImageView, icon: UIImage, target: Selector){
        view.image = icon
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: target))
    }
}








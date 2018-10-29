//
//  PlayController.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/10/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit
import SnapKit

class PlayController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var videos: [VideoModel]!
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    let backgroundView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "cover")
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        return view
    }()
    
    let blurImage: UIVisualEffectView = {
        let blur = UIBlurEffect(style: .dark)
        let blurEffect = UIVisualEffectView(effect: blur)
        blurEffect.alpha = 0.8
        blurEffect.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return blurEffect
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = VideoModel.shared.getVideos {
            self.collectionView.reloadData()
        }
        
        setBackgroundVideoView()
        setVideoCollectionView()
    }
    
    func setBackgroundVideoView(){
        view.backgroundColor = .white
        view.addSubview(backgroundView)
        backgroundView.addSubview(blurImage)
        
        backgroundView.snp.makeConstraints { (make) in
            make.top.equalTo(65)
            make.left.bottom.right.equalTo(view)
        }
        
        blurImage.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(backgroundView)
        }
        
    }
    
    func setVideoCollectionView(){
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: "display")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalTo(view)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "display", for: indexPath) as! VideoCell
        cell.backgroundColor = .clear
        
        cell.containerView.backgroundColor = .yellow
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 10, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}

class VideoCell: UICollectionViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setVideoCellView()
    }
    
    func setVideoCellView(){
        addSubview(containerView)
        containerView.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.top.equalTo(15)
            make.right.bottom.equalTo(-10)
        }
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}



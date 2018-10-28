//
//  DetailHeros.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/6/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit
import SnapKit

class DetailHeros: UIViewController {
    
    var heroe: Heroes!
    
    var heightConstraint:NSLayoutConstraint?
    
    let detailContainerView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = UIColor(red: 44/255, green: 43/255, blue: 43/255, alpha: 1)
        return view
    }()
    
    let heroesProfilePhoto: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 75
        iv.layer.borderColor = UIColor.white.cgColor
        iv.layer.borderWidth = 3
        iv.clipsToBounds = true
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        label.textAlignment = .center
        label.textColor = .darkGray
        return label
    }()
    
    let webView: UIWebView = {
        let wv = UIWebView()
        wv.backgroundColor = .red
        wv.layer.borderColor = UIColor.darkGray.cgColor
        wv.layer.borderWidth = 2
        return wv
    }()
    
    let commentDetailView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 231/255, green: 226/255, blue: 226/255, alpha: 1)
        return view
    }()
    
    let commentTextView: UITextView = {
        let tv = UITextView()
        tv.font = UIFont.systemFont(ofSize: 18)
        tv.font = UIFont(name: "Apple SD Gothic Neo", size: 18)
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDetailHeroView()
        guard let profilePhoto = heroe.profilePhoto,
              let name = heroe.name,
              let comment = heroe.comment,
              let videoId = heroe.videoId else { return }
        heroesProfilePhoto.image = UIImage(named:profilePhoto)
        nameLabel.text = name
        commentTextView.text = comment
        getVideo(videoId)
    }
    
    func getVideo(_ id: String) {
        let url = URL(string: "https://www.youtube.com/embed/\(id)")
        DispatchQueue.main.async {
            self.webView.loadRequest(URLRequest(url: url!))
        }
    }
}

//extension DetailHeros {
//    func getVideo(_ id: String) {
//        let url = URL(string: "https://www.youtube.com/embed/\(id)")
//        DispatchQueue.main.async {
//            self.webView.loadRequest(URLRequest(url: url!))
//        }
//    }
//}











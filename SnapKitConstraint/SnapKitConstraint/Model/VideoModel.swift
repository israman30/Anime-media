//
//  VideoModel.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/27/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit

struct VideoModel {
    var video:String?
    
    static let shared = VideoModel()
    
    func getVideos() -> [VideoModel]{
        let videos = [
            VideoModel(video: "video one"),
            VideoModel(video: "video two")
        ]
        return videos
    }
}

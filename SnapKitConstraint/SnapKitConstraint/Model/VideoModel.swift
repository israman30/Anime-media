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
    
    func getVideos(completion: @escaping()->()) -> [VideoModel]{
        let videos = [
            VideoModel(video: "ScV5tNmHbgw"),
            VideoModel(video: "video two"),
            VideoModel(video: "video three"),
            VideoModel(video: "video four")
        ]
        return videos
    }
}

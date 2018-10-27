//
//  HeroModel.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/5/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit

struct Heroes {
    var name:String?
    var photo: String?
    var profilePhoto: String?
    var comment: String?
    var videoId: String?
    
    static let shared = Heroes()
    
    func fetchHeroes(completion:@escaping()->()) -> [Heroes]{
        let heroes = [
            Heroes(name: "Eren Jaeger", photo: "eren2", profilePhoto: "eren", comment:"Eren Yeager (エレン・イェーガー) is a member of the Survey Corps and the main protagonist of Attack on Titan. He lived in the Shiganshina District with his parents and adopted sister Mikasa Ackerman until the fall of Wall Maria.",videoId: "u2wSGtpBogc"),
            Heroes(name: "Mikasa Ackerman", photo: "mikasa2", profilePhoto: "mikasa", comment:"Mikasa Ackermann (ミカサ・アッカーマン) is the adoptive sister of Eren Jaeger, and is the main female protagonist of the series. After her biological parents were murdered by bandits, she was rescued by Eren and lived with him and his mother and father for approximately a year before the Fall of Wall Maria.",videoId: "9DmfDr_gv6s"),
            Heroes(name: "Levi Ackerman", photo: "levi2", profilePhoto: "levi", comment:"Levi Ackerman (リヴァイ・アッカーマン), often formally referred to as Captain Levi (リヴァイ兵長 Rivai Heichō?), is the squad captain (兵士長) of the Special Operations Squad within the Survey Corps, and is widely known as humanity's strongest soldier.",videoId: "JK392VchgKo"),
            Heroes(name: "Armin Arlert", photo: "armin2", profilePhoto: "armin", comment: "Armin Arlert (アルミン・アルレルト) is an elite soldier in the Survey Corps. He is also a childhood friend of Eren Yeager and Mikasa Ackerman, and one of the two deuteragonists of the series. Although he appears to be among the physically weakest of the 104th Training Corps, his intelligence and strategic genius make him an invaluable asset, especially when paired with Hange Zoë. After the battle of Shiganshina District, he took the power of the Titans from Bertolt Hoover and became the Colossus Titan.",videoId: "ula5TNR2oTA"),
            Heroes(name: "Annie Leonhart", photo: "annie2", profilePhoto: "annie", comment: "Annie Leonhart (アニ・レオンハート) is a graduate of the 104th Cadet Corps and former member of the Military Police Regiment. Her exceptional skill with swords and unarmed combat earned her the 4th rank, but she is noted to be a lone wolf that struggles to work with others.",videoId: "6fo9F7EZfdE"),
            Heroes(name: "Reiner Braun", photo: "reinier2", profilePhoto: "reinier", comment: "Reiner Braun (ライナー・ブラウン) is a graduate of the 104th Cadet Corps and a former member of the Scout Regiment. He ranked 2nd in his class and was regarded by others as a charismatic and a reliable big brother-like figure. He is rarely seen without Bertholdt Hoover, his close childhood friend, both of whom originate from an unknown area which he refers to as his hometown.",videoId: "gEBFqSA3xXY"),
            Heroes(name: "Bertholdt Hoover", photo: "bert2", profilePhoto: "bert", comment: "Bertholdt Hoover (ベルトルト・フーバー) is a graduate of the 104th Cadet Corps and a former member of the Scout Regiment. He ranked 3rd in his class, and is described by others as a weak-willed and quiet person. He is rarely seen without Reiner Braun, his close childhood friend, both of whom originate from an unknown area which he refers to as his hometown. As the Colossal Titan, he is one of humanity's greatest threats.",videoId: "zdgyTim9sMo"),
            Heroes(name: "Zeke", photo: "beast2", profilePhoto: "beast", comment: "The Beast Titan's operator is a mysterious man from outside the Walls who appears to have allied himself with the Titans. He also appears to be affiliated with the Warriors.",videoId: "tj7zqjX_Jxk")
        ]
        return heroes
    }
}


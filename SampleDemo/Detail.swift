//
//  Detail.swift
//  SampleDemo
//
//  Created by Atlas on 19/07/20.
//  Copyright © 2020 Atlas. All rights reserved.
//

import Foundation
import UIKit

class Detail: Codable {
    var title : String = ""
//    var desc : String = ""
//    var image : String = ""
    
    init(json: [String : Any]) {
        self.title = json["title"] as? String ?? ""
//        self.desc = json["description"] as? String ?? ""
//        self.image = json["imageHref"] as? String ?? ""
    }
}

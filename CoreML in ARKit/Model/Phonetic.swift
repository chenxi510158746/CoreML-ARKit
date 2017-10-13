//
//  Phonetic.swift
//  CoreML in ARKit
//
//  Created by chenxi on 2017/10/13.
//  Copyright © 2017年 CompanyName. All rights reserved.
//

import UIKit
import ObjectMapper

struct Phonetic : Mappable {
    
    var srcStr : String!
    var trgStr : String!
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        srcStr <- map["src_str"]
        trgStr <- map["trg_str"]
        
    }
    
}

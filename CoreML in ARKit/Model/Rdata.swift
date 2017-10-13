//
//  Rdata.swift
//  CoreML in ARKit
//
//  Created by chenxi on 2017/10/13.
//  Copyright © 2017年 CompanyName. All rights reserved.
//

import UIKit
import ObjectMapper

struct Rdata : Mappable {
    
    var dst : String!
    var relation : [AnyObject]!
    var result : [[AnyObject]]!
    var src : String!
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        dst <- map["dst"]
        relation <- map["relation"]
        result <- map["result"]
        src <- map["src"]
        
    }
    
}

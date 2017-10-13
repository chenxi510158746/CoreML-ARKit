//
//  TransResult.swift
//  CoreML in ARKit
//
//  Created by chenxi on 2017/10/13.
//  Copyright © 2017年 CompanyName. All rights reserved.
//

import UIKit
import ObjectMapper

struct TransResult : Mappable {
    
    var data : [Rdata]!
    var domain : String!
    var from : String!
    var phonetic : [Phonetic]!
    var status : Int!
    var to : String!
    var type : Int!
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        data <- map["data"]
        domain <- map["domain"]
        from <- map["from"]
        phonetic <- map["phonetic"]
        status <- map["status"]
        to <- map["to"]
        type <- map["type"]
        
    }
}

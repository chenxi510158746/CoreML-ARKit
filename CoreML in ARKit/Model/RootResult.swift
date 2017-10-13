//
//  RootResult.swift
//  CoreML in ARKit
//
//  Created by chenxi on 2017/10/13.
//  Copyright © 2017年 CompanyName. All rights reserved.
//

import UIKit
import ObjectMapper

struct RootResult: Mappable {

    var logid : Int!
    var transResult : TransResult!
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        logid <- map["logid"]
        transResult <- map["trans_result"]
        
    }
    
}

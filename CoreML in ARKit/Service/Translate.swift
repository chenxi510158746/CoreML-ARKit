//
//  Translate.swift
//  CoreML in ARKit
//
//  Created by chenxi on 2017/10/13.
//  Copyright © 2017年 CompanyName. All rights reserved.
//

import UIKit
import Moya
import ObjectMapper

class Translate: NSObject {

    static func request(from:String, query:String, to:String, completion: @escaping (TransResult?) -> Void) {
        
        let provider = MoyaProvider<NetworkService>()
        
        provider.request(.translate(from: from, query: query, to: to)) { (result) in
            
            switch result {
                case let .success(moyaResponse):

                    let json = try! moyaResponse.mapJSON() as! [String: Any]

                    if let jsonResponse = RootResult(JSON: json) {

                        completion(jsonResponse.transResult)
                    }

                    break
                case .failure:
                    completion(nil)
            }
            
        }
        
        
    }
    
}

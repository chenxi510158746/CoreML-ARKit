//
//  NetworkService.swift
//  CoreML in ARKit
//
//  Created by chenxi on 2017/10/13.
//  Copyright © 2017年 CompanyName. All rights reserved.
//  http://fanyi.baidu.com/v2transapi?from=en&query=China&to=zh

import Foundation
import Moya

enum NetworkService {
    
    case translate(from:String, query:String, to:String)
    
}

extension NetworkService: TargetType {
    
    var baseURL: URL {
        return URL(string: "http://fanyi.baidu.com")!
    }
    
    var path: String {
        switch self {
        case .translate:
            return "/v2transapi"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .translate:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .translate(let from, let query, let to):
            return "{\"from\": \(from), \"query\": \(query), \"to\": \(to)}".utf8Encoded
        }
    }
    
    var task: Task {
        switch self {
        case let .translate(from, query, to):
            return .requestParameters(parameters: ["from": from, "query": query, "to": to], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
}

// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}

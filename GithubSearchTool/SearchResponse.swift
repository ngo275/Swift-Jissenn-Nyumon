//
//  SearchResponse.swift
//  GithubSearchTool
//
//  Created by ShuichiNagao on 2017/04/17.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import Foundation

struct SearchResponse<Item: JSONDecodable>: JSONDecodable {
    let totalCount: Int
    let items: [Item]
    
    init(json: Any) throws {
        guard let dictionary = json as? [String: Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let totalCount = dictionary["total_count"] as? Int else {
            throw JSONDecodeError.missingValue(key: "total_count", actualValue: dictionary["total_count"])
        }
        
        guard let itemsObjects = dictionary["items"] as? [Any] else {
            throw JSONDecodeError.missingValue(key: "items", actualValue: dictionary["items"])
        }
        
        let items = try itemsObjects.map {
            return try Item(json: $0)
        }
        
        self.totalCount = totalCount
        self.items = items
    }
}

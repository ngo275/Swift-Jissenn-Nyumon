//
//  Repository.swift
//  GithubSearchTool
//
//  Created by ShuichiNagao on 2017/04/17.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import Foundation

struct Repository: JSONDecodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    init(json: Any) throws {
        guard let dictionary = json as? [String: Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dictionary["id"])
        }
        
        guard let name = dictionary["name"] as? String else {
            throw JSONDecodeError.missingValue(key: "name", actualValue: dictionary["name"])
        }
        
        guard let fullName = dictionary["full_name"] as? String else {
            throw JSONDecodeError.missingValue(key: "full_name", actualValue: dictionary["full_name"])
        }
        
        guard let ownerObj = dictionary["owner"] else {
            throw JSONDecodeError.missingValue(key: "owner", actualValue: dictionary["owner"])
        }
        
        self.id = id
        self.name = name
        self.fullName = fullName
        self.owner = try User(json: ownerObj)
    }
}

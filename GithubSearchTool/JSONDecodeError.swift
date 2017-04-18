//
//  JSONDecodeError.swift
//  GithubSearchTool
//
//  Created by ShuichiNagao on 2017/04/17.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import Foundation

enum JSONDecodeError: Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, actualValue: Any?)
}

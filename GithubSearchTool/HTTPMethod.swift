//
//  HTTPMethod.swift
//  GithubSearchTool
//
//  Created by ShuichiNagao on 2017/04/17.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case head = "HEAD"
    case delete = "DELETE"
    case patch = "PATCH"
    case trace = "TRACE"
    case options = "OPTIONS"
    case connect = "CONNECT"
}

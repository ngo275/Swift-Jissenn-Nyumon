//
//  GithubClientError.swift
//  GithubSearchTool
//
//  Created by ShuichiNagao on 2017/04/17.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import Foundation

enum GithubClientError: Error {
    case connectionError(Error)
    case responseParseError(Error)
    case apiError(GithubAPIError)
}

//
//  Result.swift
//  GithubSearchTool
//
//  Created by ShuichiNagao on 2017/04/18.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import Foundation

enum Result<T, Error: Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}

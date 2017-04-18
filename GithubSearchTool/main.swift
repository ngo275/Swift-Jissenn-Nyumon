//
//  main.swift
//  GithubSearchTool
//
//  Created by ShuichiNagao on 2017/04/17.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import Foundation

print("Enter your query here> ", terminator: "")

guard let keyword = readLine(strippingNewline: true) else { exit(1) }

let client = GithubClient()

let request = GithubAPI.SearchRepositories(keyword: keyword)

client.send(request: request) { result in
    switch result {
    case let .success(response):
        response.items.forEach {
            print($0.owner.login + "/" + $0.name)
        }
        exit(0)
    case let .failure(error):
        print(error)
        exit(1)
    }
}

let timeoutInterval: TimeInterval = 60

Thread.sleep(forTimeInterval: timeoutInterval)

print("Connection timeout")
exit(1)

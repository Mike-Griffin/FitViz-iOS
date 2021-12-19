//
//  User.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/18/21.
//

import Foundation

struct FVUser: Codable {
    let id: Int
    let createtime: String
}

struct FVUserResponse: Codable {
    let type: String
    let data: FVUser
    let message: String
}

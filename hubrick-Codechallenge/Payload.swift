//
//  Payload.swift
//  hubrick-Codechallenge
//
//  Created by Maila  Manzur on 28/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

import Foundation
import ObjectMapper

struct Payload: Mappable {
    
    // MARK: - Properties
    var countsreaction: Int?
    var payload: Int?
    var comments: Int?
    var plaintitle: String?
    var contenttitle: String?


    // MARK: Initializer
    init?(map: Map) {}
    
    // MARK: - Mapper
    mutating func mapping(map: Map) {
        payload <- map["payload"]
        countsreaction <- map["commentStats"]
        comments <- map["commentStats"]
        plaintitle <- map["plainTitle"]
        contenttitle <- map["plainContentPreview"]

        

    }
    
}


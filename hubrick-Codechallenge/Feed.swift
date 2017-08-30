//
//  Feed.swift
//  hubrick-Codechallenge
//
//  Created by Maila  Manzur on 28/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

import Foundation
import ObjectMapper

struct  Feed: Mappable {
    
    // MARK: - Properties
    var idfeed: Int?
    var typefeed: String?
    var author: Author?
    var payload: Payload?


    // MARK: Initializer
    init?(map: Map) {}
    
    
    // MARK: - Mapper
    mutating func mapping(map: Map) {
        idfeed <- map["id"]
        typefeed <- map["type"]
        payload <- map["payload"]
        author <- map["author"]

        
    }

    
}


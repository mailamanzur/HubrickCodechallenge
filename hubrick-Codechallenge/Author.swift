//
//  Description.swift
//  hubrick-Codechallenge
//
//  Created by Maila  Manzur on 28/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

import Foundation
import ObjectMapper

struct Author: Mappable {
    
    // MARK: - Properties
    var name: String?
    var displayname: String?

    
    // MARK: Initializer
    init?(map: Map) {}
    
    // MARK: - Mapper
    mutating func mapping(map: Map) {
        name <- map["name"]
        displayname <- map["displayName"]
   
  }
    
}


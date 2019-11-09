//
//  Dates.swift
//  CodableDocument
//
//  Created by Dayton Steffeny on 11/8/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation


struct Dates: Codable{
    var created: String
    var updated: String
    
    private enum CodingKeys: String, CodingKey {
        case created
        case updated
    }
}

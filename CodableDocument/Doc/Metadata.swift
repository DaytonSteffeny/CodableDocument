//
//  Metadata.swift
//  CodableDocument
//
//  Created by Dayton Steffeny on 11/8/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation

struct Metadata: Codable{
    var topic: String
    var field: String
    
    private enum CodingKeys: String, CodingKey {
        case topic
        case field
    }
}

//
//  Author.swift
//  CodableDocument
//
//  Created by Dayton Steffeny on 11/8/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation

struct Author: Codable{
    var name: String
    var contribution: String
    var contacts: [Contact]
    
    private enum CodingKeys: String, CodingKey {
        case name
        case contribution
        case contacts
    }
}

struct Contact: Codable{
    var method: String
    var label: String
    var address: String?
    var number: String?
    
    private enum CodingKeys: String, CodingKey {
        case method
        case label
        case address
        case number
    }
}


//
//  Document.swift
//  CodableDocument
//
//  Created by Dayton Steffeny on 11/8/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation

class Document : Decodable, CustomStringConvertible{
    var uuid: String
    var dates: Dates
    var title: String
    var summary: String
    var metadata: Metadata
    var authors: [Author]
    
    public var description: String {
        let info = "Uuid: \(uuid)\n\nDates: \ncreated: \(dates.created) \nupdated: \(dates.updated)\n\nTitle: \(title)\nSummary: \(summary)\n\nMetadata: \nTopic: \(metadata.topic)\nField: \(metadata.field)\n\nAuthors:\nAuthor 1:\nName: \(authors[0].name)\nContribution: \(authors[0].contribution)\nContacts: \(authors[0].contacts)\n\nAuthor 2:\nName: \(authors[1].name)\nContribution: \(authors[1].contribution)\nContacts: \(authors[1].contacts)\n\nCopyright:\nOwner: )"
        return info
    }
}

//
//  ContentView.swift
//  CodableDocument
//
//  Created by Dayton Steffeny on 11/8/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    let jsonFileName = "document1"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var jsonData = Data()
        let fileURL = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
        
        do {
            jsonData = try Data(contentsOf: fileURL!)

        } catch {
            print(error)
        }
        
        do {
            let example = try JSONDecoder().decode(Document.self, from: jsonData)
            // CustomStringConvertible is used to get a string representing the object
            // through a .description property.
            // https://developer.apple.com/documentation/swift/customstringconvertible
            print(example)
        } catch {
            print(error)
        }
    }
}

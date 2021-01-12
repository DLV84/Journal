//
//  Entry.swift
//  Journal
//
//  Created by Daniel Villedrouin on 1/11/21.
//

import Foundation

class Entry: Codable {
    var title: String
    var body: String
    var timeStamp: Date
    
    init(title: String, body: String, timeStamp: Date = Date()) {
        self.title = title
        self.body = body
        self.timeStamp = timeStamp
    }
}// End of class

    //MARK: - Extensions
extension Entry: Equatable {
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.timeStamp == rhs.timeStamp
    }
}

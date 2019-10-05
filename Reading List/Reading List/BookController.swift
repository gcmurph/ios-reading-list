//
//  BookController.swift
//  Reading List
//
//  Created by Gavin Murphy on 10/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class BookController {
    var books = [Book]()
}

private var readingListURL: URL? {
    let fileManager = FileManager.default
    guard let documents = try? fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true) else { return nil }
    
    return documents.appendingPathComponent("ReadingList.plist")
}

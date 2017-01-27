//
//  Comment.swift
//  Commenter
//
//  Created by Kameron Haramoto on 1/26/17.
//  Copyright © 2017 Kameron Haramoto. All rights reserved.
//

import Foundation

class Comment {
    var comment: String
    var date: String
    
    init(newComment: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"
        self.comment = newComment
        self.date = dateFormatter.string(from: Date())
    }
}

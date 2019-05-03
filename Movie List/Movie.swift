//
//  Movie.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

struct Movie {
    var title: String
    var seen: Bool
    
    init(title: String, seen: Bool = false) {
        self.title = title
        self.seen = seen
    }
}

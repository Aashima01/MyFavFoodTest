//
//  Restaurant.swift
//  FavFood
//
//  Created by Aashima Singh on 11/19/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

import Foundation

class Restaurant {
    var name = ""
    var image = ""
    var location = ""
    var phone = ""
    var type = ""
    var isVisited = false
    
    init(name: String, location: String, phone: String, image: String, type: String, isVisited: Bool) {
        
        self.name = name
        self.location = location
        self.phone = phone
        self.image = image
        self.type = type
        self.isVisited = isVisited
    }
}

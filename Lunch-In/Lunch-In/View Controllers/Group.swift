//
//  Group.swift
//  Lunch-In
//
//  Created by Kevin Stewart on 1/7/20.
//  Copyright © 2020 John Holowesko. All rights reserved.
//

import Foundation
import UIKit

struct Group {
    var name: String
    var didVote: Bool
    
    init(name: String, didVote: Bool) {
        self.name = name
        self.didVote = didVote
    }
    
}

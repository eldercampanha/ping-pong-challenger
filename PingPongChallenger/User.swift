//
//  User.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-13.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import Foundation

class User {
    var name: String = ""
    var wins: Int = 0
    var losses: Int = 0
    
    func didWin() {
        wins = wins + 1
    }

    func didLoose() {
        losses = losses + 1
    }
}

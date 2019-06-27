//
//  Result.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-13.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import Foundation

class Result {
    var score: String = ""
    var date: String = ""

    func setScore(winner: String, winnerScore: Int, loser: String, loserScore: Int) {
        score = "\(winner) \(winnerScore) vs \(loser) \(loserScore)"
        date = Date().beauty()
    }
}


extension Date {
    
    func beauty(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.string(from: date)
    }

    func beauty() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.string(from: Date())
    }
}

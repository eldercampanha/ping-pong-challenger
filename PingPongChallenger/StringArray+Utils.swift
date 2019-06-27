//
//  StringArray+Utils.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-26.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import Foundation

extension Array {
    
    func toString() -> String {
        var str = ""
        self.forEach({
            if (str == "") {
                str = "\($0)"
            } else {
                str = "\(str), \($0) "
            }
        })
        return str
    }
}

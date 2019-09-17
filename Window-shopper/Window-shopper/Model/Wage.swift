//
//  Wage.swift
//  Window-shopper
//
//  Created by Marzieh on 2019-09-17.
//  Copyright © 2019 Myph. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int {
        return Int(ceil(price / wage))
    }
}

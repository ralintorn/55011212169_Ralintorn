//
//  File.swift
//  Exam1_55011212169
//
//  Created by student on 10/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import Foundation
class  Exammodel {
    
    var num:Double
    var price:Double
    let total:Double
    init(num:Double,price:Double){
        
        self.num = num
        self.price = price
        total = num * price

        
    }
}

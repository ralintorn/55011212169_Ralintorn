//
//  File.swift
//  TipCalculator
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import Foundation
class TipCalculatorModel{
    
    
    //2
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total / (taxPct+1)
        }
    }
    
    //3
    init(total:Double, taxPct:Double){
        self.total = total //ชื่อเดียวกันต้องใช้ self
        self.taxPct = taxPct
    }
    //4
    func calcTipWithTipPct(tipPct:Double) ->(tipAmt:Double,total:Double){ //-> มีการรีเทิร์นค่า
        let tipAmt = subtotal * tipPct
        let finalTotal = total+tipAmt
        return (tipAmt, finalTotal)
    }
    //1
    func returnPossibleTips() -> [Int: (tipAmt:Double, total:Double)]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipExplicit:[Double] = [0.15, 0.18, 0.20]
        
        //2
        var retval = Dictionary<Int, (tipAmt:Double, total:Double)>()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}
let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
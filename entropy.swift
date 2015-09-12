//
//  entropy.swift
//  Minigma
//
//  Created by Afnan Enayet on 8/31/15.
//  Copyright (c) 2015 Afnan Enayet. All rights reserved.
//

import Foundation

class entropy {
    
    /*func shuffle<C: MutableCollectionType where C.Index == Int>(var list: C, _ seed: UInt32) -> C { //TODO: figure out how to shuffle based on seed
        let c = count(list)
        srand(seed);
        if c < 2 { return list }
        for i in 0..<(c - 1) {
           // let j = Int(rand() % (c - i) + i);
            swap(&list[i], &list[j])
        }
        return list
    }*/
    
    func calcSeed(pw: String) -> UInt {
        var seed: UInt = 0;
        let u_array = [UInt16](pw.utf16)
        for (var i = 0; i < count(u_array); i++) { //cycle through each character
            var multiplier = Int(pow(Double(10), Double(i))); //so the order of the characters matter, sort of "adds" the number numerically and sequentially
            seed += UInt(multiplier * Int(u_array[i])); //adds to the seed
        }
        return seed;
    }
    
    func shuffle (seed: Int, _ message: String) {
        
    }
}

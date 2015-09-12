//
//  encoder.swift
//  Minigma
//
//  Created by Afnan Enayet on 8/31/15.
//  Copyright (c) 2015 Afnan Enayet. All rights reserved.
//

import Foundation


class cipher {
    //password, message
    func encode(pw: String, _ mess: String) -> String {
        var decodedMessage: String = "DEBUG";
        var p_rand = entropy()
        println(p_rand.calcSeed(pw)); //gets the seed randomness
        
        return decodedMessage;
    }
    
    func decode(pw: String, _ mess:String) -> String {
        return "DEBUG"; //TODO: change this
    }
}

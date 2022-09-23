//
//  LolKarakter.swift
//  UseTerminal
//
//  Created by Arda Sisli on 23.09.2022.
//

import Foundation

class Lol {
    var name: String?
    var type: String?
    
    init() { }
    
    init(name: String, type: String) {
        self.name = name
        self.type = type
    }
}

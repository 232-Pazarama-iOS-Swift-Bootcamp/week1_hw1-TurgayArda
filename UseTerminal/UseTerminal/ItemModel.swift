//
//  ItemModel.swift
//  UseTerminal
//
//  Created by Arda Sisli on 23.09.2022.
//

import Foundation

class Item {
    var itemName: String?
    var itemPrice: Int?
    var itemPower: Int?
    
    init(itemName: String, itemPrice: Int, itemPower: Int) {
        self.itemName = itemName
        self.itemPrice = itemPrice
        self.itemPower = itemPower
    }
}

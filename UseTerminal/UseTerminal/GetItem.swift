//
//  GetItem.swift
//  UseTerminal
//
//  Created by Arda Sisli on 23.09.2022.
//

import Foundation

protocol ItemListPorotocol {
    func itemList(karakter: String)
    func itemDetay(karakter: String)
    func itemEkle(karakter: String, item: Int)
}

class ItemList: ItemListPorotocol {
    var karakterItemList: [Item] = []
    var karakterItemDetay: [Item] = []
    var ItemEkle: Item?
    var karakterItemListName = ""
    var karakterItemLisPrice = 0
    var karakterItemListPower = 0
    var itemInfo = ItemInfo()
    
    func itemList(karakter: String)  {
        let karakterTwo = karakter.lowercased()
        karakterItemList = itemInfo.selectedItem(karakter: karakterTwo)

        for i in karakterItemList {
            self.karakterItemListName = i.itemName!
            self.karakterItemLisPrice = i.itemPrice!
            self.karakterItemListPower = i.itemPower!
            
            print("karakterItemListName: \(karakterItemListName)")
            print("karakterItemLisPrice: \(karakterItemLisPrice)")
            print("karakterItemListPower: \(karakterItemListPower)")
            print("******************")
        }
    }
    
    func itemDetay(karakter: String) {
        let karakterTwo = karakter.lowercased()
        karakterItemDetay = itemInfo.selectedItem(karakter: karakterTwo)
        let karakterSelected = itemInfo.selectedKarakter(karakter: karakterTwo)
        guard let karakterName = karakterSelected.name else { return }
        guard let karakterType = karakterSelected.type else { return }
        
        print("Karakter Name: \(karakterName)")
        print("Karakter Type: \(karakterType)")
        print("******************")
    
        for i in karakterItemDetay {
            self.karakterItemListName = i.itemName!
            self.karakterItemLisPrice = i.itemPrice!
            self.karakterItemListPower = i.itemPower!
            
            print("karakterItemLis tName: \(karakterItemListName)")
            print("karakterItemLis Price: \(karakterItemLisPrice)")
            print("karakterItemList Power: \(karakterItemListPower)")
            print("******************")
        }
    }
    
    func itemEkle(karakter: String, item: Int) {
        self.ItemEkle = itemInfo.itemEkle(karakter: karakter, item: item)
        
        guard let eklenenItemName = ItemEkle?.itemName else { return }
        print("\(eklenenItemName) sepete eklendi")
    }
}

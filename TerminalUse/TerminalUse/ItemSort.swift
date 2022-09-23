//
//  ItemSort.swift
//  TerminalUse
//
//  Created by Arda Sisli on 23.09.2022.
//

import Foundation

protocol ItemInfoProtocol {
    func selectedItem(karakter: String) -> [Item]
    func selectedKarakter(karakter: String) -> Lol
    func itemEkle(karakter: String, item: Int) -> Item
}

class ItemInfo: ItemInfoProtocol {
    var karakterItemList: [Item] = []
    func selectedItem(karakter: String) -> [Item] {
        let darkSeal = Item(itemName: "Dark Seal", itemPrice: 100, itemPower: 15)
        let Everfrost = Item(itemName: "Everfrost", itemPrice: 25, itemPower: 70)
        let horizonFocus = Item(itemName: "Horizon Focus", itemPrice: 330, itemPower: 85)
        let voidStaff = Item(itemName: "Void Staff", itemPrice: 200, itemPower: 65)
        let lonianBoots = Item(itemName: "Lonian Boots", itemPrice: 180, itemPower: 0)

        let shadowflame = Item(itemName: "Shadowflame", itemPrice: 500, itemPower: 100)
        let needlesslyLargeRod = Item(itemName: "Needlessly Large Rod", itemPrice: 660, itemPower: 60)
        let sorcerersShoes = Item(itemName: "Sorcerer's Shoes", itemPrice: 180, itemPower: 0)
        let morellonomicon = Item(itemName: "Morellonomicon", itemPrice: 580, itemPower: 80)
        let demonicEmbrace = Item(itemName: "Demonic Embrace", itemPrice: 400, itemPower: 60)

        let berserkersGreaves = Item(itemName: "Berserker's Greaves", itemPrice: 180, itemPower: 0)
        let bladeofTheRuinedKing = Item(itemName: "Blade of The Ruined King", itemPrice: 440, itemPower: 30)
        let phantomDancer = Item(itemName: "phantomDancer", itemPrice: 550, itemPower: 20)
        let runaansHurricane = Item(itemName: "runaansHurricane", itemPrice: 123, itemPower: 45)
        let infinityEdge = Item(itemName: "infinityEdge", itemPrice: 565, itemPower: 70)

        let dançadaMorte = Item(itemName: "Dança da Morte", itemPrice: 256, itemPower: 55)
        let cuteloNegro = Item(itemName: "Cutelo Negro", itemPrice: 678, itemPower: 45)
        let rancordeSerylda = Item(itemName: "Rancor de Serylda", itemPrice: 546, itemPower: 45)
        let mandíbuladeMalmortius = Item(itemName: "Mandíbula de Malmortius", itemPrice: 345, itemPower: 50)
        let passosdeMercúrio =  Item(itemName: "Passos de Mercúrio", itemPrice: 180, itemPower: 0)

        let ahriItemList = [darkSeal, Everfrost, horizonFocus, voidStaff, lonianBoots]
        let akaliItemList = [needlesslyLargeRod, demonicEmbrace, shadowflame, sorcerersShoes, morellonomicon]
        let asheItemList = [berserkersGreaves, bladeofTheRuinedKing, phantomDancer, runaansHurricane, infinityEdge]
        let aatroxItemList = [passosdeMercúrio, mandíbuladeMalmortius, rancordeSerylda, cuteloNegro, dançadaMorte]
        
            switch karakter {
            case "ahri":
                self.karakterItemList = ahriItemList
            case "akali":
                self.karakterItemList = akaliItemList
            case "ashe":
                self.karakterItemList = asheItemList
            case "aatrox":
                self.karakterItemList = aatroxItemList
            default:
                self.karakterItemList = []
            }
        
        return karakterItemList
    }
    
    func selectedKarakter(karakter: String) -> Lol {
        var karakterLol: Lol?
        
        let ahri = Lol(name: "Ahri", type: "Wizard")
        let akali = Lol(name: "Akali", type: "Assassin")
        let ashe = Lol(name: "Ashe", type: "Marksman")
        let aatrox = Lol(name: "Aatrox", type: "Warrior")
        
        switch karakter {
        case ahri.name?.lowercased():
            karakterLol = ahri
        case akali.name?.lowercased():
            karakterLol = akali
        case ashe.name?.lowercased():
            karakterLol = ashe
        case aatrox.name?.lowercased():
            karakterLol = aatrox
        default:
            print("bos")
        }
        guard let karakterLolTwo = karakterLol else { return Lol()}
        return karakterLolTwo
    }
    
    func itemEkle(karakter: String, item: Int) -> Item {
        var eklenenItem: [Item] = []
        
        let darkSeal = Item(itemName: "Dark Seal", itemPrice: 100, itemPower: 15)
        let Everfrost = Item(itemName: "Everfrost", itemPrice: 25, itemPower: 70)
        let horizonFocus = Item(itemName: "Horizon Focus", itemPrice: 330, itemPower: 85)
        let voidStaff = Item(itemName: "Void Staff", itemPrice: 200, itemPower: 65)
        let lonianBoots = Item(itemName: "Lonian Boots", itemPrice: 180, itemPower: 0)

        let shadowflame = Item(itemName: "Shadowflame", itemPrice: 500, itemPower: 100)
        let needlesslyLargeRod = Item(itemName: "Needlessly Large Rod", itemPrice: 660, itemPower: 60)
        let sorcerersShoes = Item(itemName: "Sorcerer's Shoes", itemPrice: 180, itemPower: 0)
        let morellonomicon = Item(itemName: "Morellonomicon", itemPrice: 580, itemPower: 80)
        let demonicEmbrace = Item(itemName: "Demonic Embrace", itemPrice: 400, itemPower: 60)

        let berserkersGreaves = Item(itemName: "Berserker's Greaves", itemPrice: 180, itemPower: 0)
        let bladeofTheRuinedKing = Item(itemName: "Blade of The Ruined King", itemPrice: 440, itemPower: 30)
        let phantomDancer = Item(itemName: "phantomDancer", itemPrice: 550, itemPower: 20)
        let runaansHurricane = Item(itemName: "runaansHurricane", itemPrice: 123, itemPower: 45)
        let infinityEdge = Item(itemName: "infinityEdge", itemPrice: 565, itemPower: 70)

        let dançadaMorte = Item(itemName: "Dança da Morte", itemPrice: 256, itemPower: 55)
        let cuteloNegro = Item(itemName: "Cutelo Negro", itemPrice: 678, itemPower: 45)
        let rancordeSerylda = Item(itemName: "Rancor de Serylda", itemPrice: 546, itemPower: 45)
        let mandíbuladeMalmortius = Item(itemName: "Mandíbula de Malmortius", itemPrice: 345, itemPower: 50)
        let passosdeMercúrio =  Item(itemName: "Passos de Mercúrio", itemPrice: 180, itemPower: 0)

        let ahriItemList = [darkSeal, Everfrost, horizonFocus, voidStaff, lonianBoots]
        let akaliItemList = [needlesslyLargeRod, demonicEmbrace, shadowflame, sorcerersShoes, morellonomicon]
        let asheItemList = [berserkersGreaves, bladeofTheRuinedKing, phantomDancer, runaansHurricane, infinityEdge]
        let aatroxItemList = [passosdeMercúrio, mandíbuladeMalmortius, rancordeSerylda, cuteloNegro, dançadaMorte]
        
        switch karakter {
        case "ahri":
            eklenenItem = ahriItemList
        case "akali":
            eklenenItem = akaliItemList
        case "ashe":
            eklenenItem = asheItemList
        case "aatrox":
            eklenenItem = aatroxItemList
        default:
            eklenenItem = []
        }
        
        return eklenenItem[item]
    }
}

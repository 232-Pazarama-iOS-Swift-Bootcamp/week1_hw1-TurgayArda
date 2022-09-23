//
//  main.swift
//  TerminalUse
//
//  Created by Arda Sisli on 23.09.2022.
//

import Foundation

print("Lol karakter item sayfasina hosgeldiniz")
print("Lutfen hangi karakteri istediginizi secin")

var karakterReturn = false

while let karakter = readLine() {
    let itemList = ItemList()
        print("\(karakter) itemleri")
        itemList.itemList(karakter: karakter)
        print("detay sayfasina gitmek ister misin ?(evet - hayir)")
    if let isDetay = readLine() {
        if isDetay == "evet" {
            itemList.itemDetay(karakter: karakter)
            print("sepete eklemek ister misiniz ?(evet - hayir)")
            if let isSepet = readLine() {
                if isSepet == "evet" {
                    print("Kacinci item eklemek istersiniz ?(sayi olarak)")
                    let kacinciItem = readLine()
                    if let kacinciItemInt = Int(kacinciItem ?? "") {
                        itemList.itemEkle(karakter: karakter, item: kacinciItemInt)
                        print("anasayfaya dondunuz")
                        print("Lutfen hangi karakteri istediginizi secin")
                    }
                }else{
                    continue
                }
            }
        }else{
            continue
        }
    }
}



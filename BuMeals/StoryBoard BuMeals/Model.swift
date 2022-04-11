//
//  File.swift
//  testApp
//
//  Created by Evan Susanto on 09/04/22.
//

import Foundation
import SwiftUI

struct ZatGizi {
    var titleGizi: String
    var definisiGizi: String
}

struct BahanMakanan{
    var namaBahan: String
    var tipeBahan: String
    var gambarBahan: String
    var countMenuPilihanBahan : Int
    var definisiBahan : String
    var arrOfZatGizi: [JenisZatGizi] = []
    var arrOfResep:[ResepMakanan]=[]
    func checkIfZatGiziExists(jenisZatGizi: JenisZatGizi) -> Bool {
        return arrOfZatGizi.contains(jenisZatGizi)
    }
    
}
struct ResepMakanan{
    var titleMakanan: String
    var daftarBahanMasakan: String
    var caraMasakan: String
}
enum JenisZatGizi {
    case Protein
    case VitaminA
    case VitaminB1
    case VitaminB2
    case VitaminB3
    case VitaminB6
    case VitaminB9
    case VitaminB12
    case VitaminC
    case VitaminD
    case VitaminE
    case VitaminK
    case Kalsium
    case Fosfor
    case Magnesium
    case ZatBesi
    case Yodium
    case Zinc
    case Selenium
    case Mangan
}
 

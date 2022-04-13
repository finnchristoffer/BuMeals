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
 
struct BahanMakanan : Identifiable{
    let id = UUID()
    var namaBahan: String
    var tipeBahan: String
    var gambarBahan:String
    var countMenuPilihanBahan : Int
    var definisiBahan : String
    var arrOfZatGizi: [JenisZatGizi] = []
    var arrOfResep:[ResepMakanan]=[]
    func checkIfZatGiziExists(jenisZatGizi: JenisZatGizi) -> Bool {
        return arrOfZatGizi.contains(jenisZatGizi)
    }
    func checkJenisZatGiziName(jenisZatGizi:JenisZatGizi)->String{
        switch jenisZatGizi{
        case JenisZatGizi.Protein:
            return("Protein")
        case .VitaminA:
            return("VitaminA")
        case .VitaminB1:
            return("VitaminB1")
        case .VitaminB2:
            return("VitaminB2")
        case .VitaminB3:
            return("VitaminB3")
        case .VitaminB6:
            return("VitaminB6")
        case .VitaminB9:
            return("VitaminB9")
        case .VitaminB12:
            return("VitaminB12")
        case .VitaminC:
            return("VitaminC")
        case .VitaminD:
            return("VitaminD")
        case .VitaminE:
            return("VitaminE")
        case .VitaminK:
            return("VitaminK")
        case .Kalsium:
            return("Kalsium")
        case .Fosfor:
            return("Fosfor")
        case .Magnesium:
            return("Magnesium")
        case .ZatBesi:
            return("ZatBesi")
        case .Yodium:
            return("Yodium")
        case .Zinc:
            return("Zinc")
        case .Selenium:
            return("Selenium")
        case .Mangan:
            return("Mangan")
        }
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


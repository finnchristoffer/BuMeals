//
//  File.swift
//  testApp
//
//  Created by Evan Susanto on 10/04/22.
//

import Foundation
//Isi Zat Gizi

let Protein=ZatGizi(titleGizi: "Protein", definisiGizi: "Pada ibu hamil, Protein berguna sebagai komponen penyusun sel vital terutama untuk menciptakan kulit, otot, rambut, dan tulang. Protein Sangat dibutuhkan untuk memastikan pertumbuhan bayi normal dan mencegah berat lahir rendah serta menjaga kesehatan jaringan tubuh si Ibu.")
let VitaminA=ZatGizi(titleGizi: "Vitamin A", definisiGizi: "Pada ibu hamil, Vitamin A berguna untuk proses perkembangan jantung, paru-paru, ginjal, mata, dan Tulang janin. Setelah melahirkan, vitamin A membantu memperbaiki jaringan tubuh ibu, menurunkan resiko terjadinya infeksi, memperkuat daya tahan tubuh, dan menjaga kesehatan penglihatan.")

//Isi Bahan Makanan (pisang jpg error karena belom ada)
// arrOfResep itu isinya object dari reseo makanan, contoh makanan Bayam brarti jadi arrOfresep:[BayamBeningJagung,]

let Pisang=BahanMakanan(namaBahan: "Pisang", tipeBahan: "Bh1", gambarBahan: UIImage(named: "pisang.jpg"), countMenuPilihanBahan: 0, definisiBahan: "Buah", arrOfZatGizi: [JenisZatGizi.VitaminB6,JenisZatGizi.VitaminC],arrOfResep: [])
let Bayam=BahanMakanan(namaBahan: "Bayam", tipeBahan: "Bh1", gambarBahan: UIImage(named: "pisang.jpg"), countMenuPilihanBahan: 0, definisiBahan: "Buah", arrOfZatGizi: [JenisZatGizi.VitaminB6,JenisZatGizi.VitaminC],arrOfResep: [])


//isi Resep Makanan
let BayamBeningJagung=ResepMakanan(titleMakanan: "Bayam Bening Jagung", daftarBahanMasakan: "", caraMasakan: "")

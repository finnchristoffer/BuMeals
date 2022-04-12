//
//  ViewController.swift
//  BuMeals
//
//  Created by Finn Christoffer Kurniawan on 06/04/22.
//

import UIKit

class ViewController: UIViewController {

    var arrBahanMakanan:[BahanMakanan]=[Pisang,Alpukat,Jeruk,Jagung,DagingSapi,DagingAyam,Salmon,Susu,Telur,Buncis,KacangTanah,KacangPolong,KacangKedelai,SayurBayam,SayurBrokoli,SayurWortel,Ubi ]
    var PilihanUser:JenisZatGizi?
    var tampilUser:[BahanMakanan]=[]

    
    @IBOutlet weak var selectionButtonProtein: UIButton!
    @IBOutlet weak var selectionButtonVitaminA: UIButton!
    @IBOutlet weak var selectionButtonVitaminB1: UIButton!
    @IBOutlet weak var selectionButtonVitaminB2: UIButton!
    @IBOutlet weak var selectionButtonVitaminB3: UIButton!
    @IBOutlet weak var selectionButtonVitaminB6: UIButton!
    @IBOutlet weak var selectionButtonVitaminB9: UIButton!
    @IBOutlet weak var selectionButtonVitaminB12: UIButton!
    @IBOutlet weak var selectionButtonVitaminC: UIButton!
    @IBOutlet weak var selectionButtonVitaminD: UIButton!
    @IBOutlet weak var selectionButtonVitaminE: UIButton!
    @IBOutlet weak var selectionButtonVitaminK: UIButton!
    @IBOutlet weak var selectionButtonKalsium: UIButton!
    @IBOutlet weak var selectionButtonFosfor: UIButton!
    @IBOutlet weak var selectionButtonMagnesium: UIButton!
    @IBOutlet weak var selectionButtonZatBesi: UIButton!
    @IBOutlet weak var selectionButtonYodium: UIButton!
    @IBOutlet weak var selectionButtonZinc: UIButton!
    @IBOutlet weak var selectionButtonSelenium: UIButton!
    @IBOutlet weak var selectionButtonMangan: UIButton!
    @IBOutlet weak var Selanjutnya: UIButton!
    @IBOutlet weak var infoProtein: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Rounded Button
        Selanjutnya.layer.cornerRadius = 25
        Selanjutnya.layer.masksToBounds = true
        
       
        
    }
    
    func tampilUserChecker(arrBahanMakanan:[BahanMakanan],PilihanUser:JenisZatGizi) -> Void{
            for itemPilihan in arrBahanMakanan{
                if itemPilihan.checkIfZatGiziExists(jenisZatGizi: PilihanUser){
                    tampilUser.append(itemPilihan)
                }
        }
    }
    
    //error button
    @IBAction func pressProtein(_ sender: Any) {
        selectionButtonProtein.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Protein)
        print(arrBahanMakanan[0].namaBahan)
        print(tampilUser)
    }
    
    @IBAction func pressVitA(_ sender: Any) {
        selectionButtonVitaminA.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminA)
        print(arrBahanMakanan[0].namaBahan)
        print(tampilUser)
    }

    @IBAction func pressVitB1(_ sender: Any) {
        selectionButtonVitaminB1.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminB1)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB2(_ sender: Any) {
        selectionButtonVitaminB2.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminB2)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB3(_ sender: Any) {
        selectionButtonVitaminB3.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminB3)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB6(_ sender: Any) {
        selectionButtonVitaminB6.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminB6)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB9(_ sender: Any) {
        selectionButtonVitaminB9.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminB9)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB12(_ sender: Any) {
        selectionButtonVitaminB12.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminB12)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitC(_ sender: Any) {
        selectionButtonVitaminC.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminC)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitD(_ sender: Any) {
        selectionButtonVitaminD.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminD)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitE(_ sender: Any) {
        selectionButtonVitaminE.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminE)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitK(_ sender: Any) {
        selectionButtonVitaminK.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminK)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressKalsium(_ sender: Any) {
        selectionButtonKalsium.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Kalsium)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressFosfor(_ sender: Any) {
        selectionButtonFosfor.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Fosfor)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressMagnesium(_ sender: Any) {
        selectionButtonMagnesium.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Magnesium)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressZatBesi(_ sender: Any) {
        selectionButtonZatBesi.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.ZatBesi)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressYodium(_ sender: Any) {
        selectionButtonYodium.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Yodium)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressZinc(_ sender: Any) {
        selectionButtonZinc.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Yodium)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressSelenium(_ sender: Any) {
        selectionButtonSelenium.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Selenium)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressMangan(_ sender: Any) {
        selectionButtonMangan.alpha = 0.4
        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Mangan)
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressSelanjutnya(_ sender: Any) {
        
    }
}



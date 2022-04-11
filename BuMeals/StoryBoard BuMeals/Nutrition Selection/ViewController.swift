//
//  ViewController.swift
//  BuMeals
//
//  Created by Finn Christoffer Kurniawan on 06/04/22.
//

import UIKit

class ViewController: UIViewController {

    
   var arrOfPilihanUser:[JenisZatGizi]=[JenisZatGizi.Protein,JenisZatGizi.VitaminB2]
   var tampilUser:[BahanMakanan]=[]

    
    @IBOutlet weak var Protein: UIButton!
    @IBOutlet weak var VitaminA: UIButton!
    @IBOutlet weak var VitaminB1: UIButton!
    @IBOutlet weak var VitaminB2: UIButton!
    @IBOutlet weak var VitaminB3: UIButton!
    @IBOutlet weak var VitaminB6: UIButton!
    @IBOutlet weak var VitaminB9: UIButton!
    @IBOutlet weak var VitaminB12: UIButton!
    @IBOutlet weak var VitaminC: UIButton!
    @IBOutlet weak var VitaminD: UIButton!
    @IBOutlet weak var VitaminE: UIButton!
    @IBOutlet weak var VitaminK: UIButton!
    @IBOutlet weak var Kalsium: UIButton!
    @IBOutlet weak var Fosfor: UIButton!
    @IBOutlet weak var Magnesium: UIButton!
    @IBOutlet weak var ZatBesi: UIButton!
    @IBOutlet weak var Yodium: UIButton!
    @IBOutlet weak var Zinc: UIButton!
    @IBOutlet weak var Selenium: UIButton!
    @IBOutlet weak var Mangan: UIButton!
    @IBOutlet weak var Selanjutnya: UIButton!
    @IBOutlet weak var infoProtein: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Rounded Button
        Selanjutnya.layer.cornerRadius = 25
        Selanjutnya.layer.masksToBounds = true
        
        //Init Symbol Info
        //infoProtein.setImage(UIImage(systemName: "info.circle"), for: .normal)
        
    }
    
    //
    func tampilUserChecker(arrBahanMakanan:[JenisZatGizi],arrOfPilihanUser:[BahanMakanan]) -> Void{
        for itemBahan in arrBahanMakanan {
            for itemPilihan in arrOfPilihanUser{
                if itemPilihan.checkIfZatGiziExists(jenisZatGizi: itemBahan){
                    tampilUser.append(itemPilihan)
                }
            }
        }
    }

    
    //error button
    @IBAction func pressProtein(_ sender: Any) {
        Protein.alpha = 0.4
    }
    
    @IBAction func pressVitA(_ sender: Any) {
        VitaminA.alpha = 0.4
    }

    @IBAction func pressVitB1(_ sender: Any) {
        VitaminB1.alpha = 0.4
    }
    
    @IBAction func pressVitB2(_ sender: Any) {
        VitaminB2.alpha = 0.4
    }
    
    @IBAction func pressVitB3(_ sender: Any) {
        VitaminB3.alpha = 0.4
    }
    
    @IBAction func pressVitB6(_ sender: Any) {
        VitaminB6.alpha = 0.4
    }
    
    @IBAction func pressVitB9(_ sender: Any) {
        VitaminB9.alpha = 0.4
    }
    //error button
    @IBAction func pressVitB12(_ sender: Any) {
        VitaminB12.alpha = 0.4
    }
    
    @IBAction func pressVitC(_ sender: Any) {
        VitaminC.alpha = 0.4
    }
    
    @IBAction func pressVitD(_ sender: Any) {
        VitaminD.alpha = 0.4
    }
    
    @IBAction func pressVitE(_ sender: Any) {
        VitaminE.alpha = 0.4
    }
    
    @IBAction func pressVitK(_ sender: Any) {
        VitaminK.alpha = 0.4
    }
    
    @IBAction func pressKalsium(_ sender: Any) {
        Kalsium.alpha = 0.4
    }
    
    @IBAction func pressFosfor(_ sender: Any) {
        Fosfor.alpha = 0.4
    }
    
    @IBAction func pressMagnesium(_ sender: Any) {
        Magnesium.alpha = 0.4
    }
    
    @IBAction func pressZatBesi(_ sender: Any) {
        ZatBesi.alpha = 0.4
    }
    
    @IBAction func pressYodium(_ sender: Any) {
        Yodium.alpha = 0.4
    }
    
    @IBAction func pressZinc(_ sender: Any) {
        Zinc.alpha = 0.4
    }
    
    @IBAction func pressSelenium(_ sender: Any) {
        Selenium.alpha = 0.4
    }
    
    @IBAction func pressMangan(_ sender: Any) {
        Mangan.alpha = 0.4
    }
    
    @IBAction func pressSelanjutnya(_ sender: Any) {
        
    }
}


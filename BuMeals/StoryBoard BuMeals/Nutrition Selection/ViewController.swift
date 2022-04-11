//
//  ViewController.swift
//  BuMeals
//
//  Created by Finn Christoffer Kurniawan on 06/04/22.
//

import UIKit

class ViewController: UIViewController {
    //var arrBahanMakanan:[BahanMakanan]=[Bayam,Bayam,Bayam]
    //var pilihanUser:JenisZatGizi
    //var tampilUser:[BahanMakanan]=[]


    
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
        
        //Init Symbol Info
        //infoProtein.setImage(UIImage(systemName: "info.circle"), for: .normal)
        
    }
    
    
    //error button
    @IBAction func pressProtein(_ sender: Any) {
        selectionButtonProtein.alpha = 0.4
        }
    
    @IBAction func pressVitA(_ sender: Any) {
        selectionButtonVitaminA.alpha = 0.4
    }

    @IBAction func pressVitB1(_ sender: Any) {
        selectionButtonVitaminB1.alpha = 0.4
    }
    
    @IBAction func pressVitB2(_ sender: Any) {
        selectionButtonVitaminB2.alpha = 0.4
    }
    
    @IBAction func pressVitB3(_ sender: Any) {
        selectionButtonVitaminB3.alpha = 0.4
    }
    
    @IBAction func pressVitB6(_ sender: Any) {
        selectionButtonVitaminB6.alpha = 0.4
    }
    
    @IBAction func pressVitB9(_ sender: Any) {
        selectionButtonVitaminB9.alpha = 0.4
    }
    //error button
    @IBAction func pressVitB12(_ sender: Any) {
        selectionButtonVitaminB12.alpha = 0.4
    }
    
    @IBAction func pressVitC(_ sender: Any) {
        selectionButtonVitaminC.alpha = 0.4
    }
    
    @IBAction func pressVitD(_ sender: Any) {
        selectionButtonVitaminD.alpha = 0.4
    }
    
    @IBAction func pressVitE(_ sender: Any) {
        selectionButtonVitaminE.alpha = 0.4
    }
    
    @IBAction func pressVitK(_ sender: Any) {
        selectionButtonVitaminK.alpha = 0.4
    }
    
    @IBAction func pressKalsium(_ sender: Any) {
        selectionButtonKalsium.alpha = 0.4
    }
    
    @IBAction func pressFosfor(_ sender: Any) {
        selectionButtonFosfor.alpha = 0.4
    }
    
    @IBAction func pressMagnesium(_ sender: Any) {
        selectionButtonMagnesium.alpha = 0.4
    }
    
    @IBAction func pressZatBesi(_ sender: Any) {
        selectionButtonZatBesi.alpha = 0.4
    }
    
    @IBAction func pressYodium(_ sender: Any) {
        selectionButtonYodium.alpha = 0.4
    }
    
    @IBAction func pressZinc(_ sender: Any) {
        selectionButtonZinc.alpha = 0.4
    }
    
    @IBAction func pressSelenium(_ sender: Any) {
        selectionButtonSelenium.alpha = 0.4
    }
    
    @IBAction func pressMangan(_ sender: Any) {
        selectionButtonMangan.alpha = 0.4
    }
    
    @IBAction func pressSelanjutnya(_ sender: Any) {
        
    }
}


//
//  ViewController.swift
//  BuMeals
//
//  Created by Finn Christoffer Kurniawan on 06/04/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    fileprivate var contentViewInHC:UIHostingController<BahanMakananListView> = UIHostingController(rootView: BahanMakananListView(tampilUser: []))
    var arrBahanMakanan:[BahanMakanan]=[Pisang,Alpukat,Jeruk,Jagung,DagingSapi,DagingAyam,Salmon,Susu,Telur,Buncis,KacangTanah,KacangPolong,KacangKedelai,SayurBayam,SayurBrokoli,SayurWortel,Ubi ]
    var PilihanUser:JenisZatGizi?
    var tampilUser:[BahanMakanan]=[]
    var selectedItems:[JenisZatGizi]=[]
    
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
    
    fileprivate func setupHC(){
        addChild(contentViewInHC)
        view.addSubview(contentViewInHC.view)
        contentViewInHC.didMove(toParent: self)
    }
    
    fileprivate func setupConstraints() {
        contentViewInHC.view.translatesAutoresizingMaskIntoConstraints = false
        contentViewInHC.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentViewInHC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentViewInHC.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentViewInHC.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    func tampilUser1() -> Void {
        tampilUser = arrBahanMakanan.filter {
            makanan in
            makanan.arrOfZatGizi.contains  {
                zatgizi in selectedItems.contains(zatgizi)
            }
        }
    }
    
//    func tampilUserChecker(arrBahanMakanan:[BahanMakanan],PilihanUser:JenisZatGizi) -> Void{
////                for itemPilihan in arrBahanMakanan{
////                    if itemPilihan.checkIfZatGiziExists(jenisZatGizi: PilihanUser){
////                        if tampilUser.contains(where: { makanan in
////                            return makanan.checkIfZatGiziExists(jenisZatGizi: PilihanUser)
////                        }){
////                            print(itemPilihan)
////                        }else{
////                            tampilUser.append(itemPilihan)
////                        }
////
//                    //}
//            //}
//        tampilUser = arrBahanMakanan.filter( { makanan in
//                makanan.checkIfZatGiziExists(jenisZatGizi: PilihanUser)
//        })
//    }
    
    //error button
    @IBAction func pressProtein(_ sender: Any) {
        if selectionButtonProtein.alpha != 0.4{
            selectedItems.append(JenisZatGizi.Protein)
            selectionButtonProtein.alpha = 0.4
//            tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.Protein)
            tampilUser1()
            print(arrBahanMakanan[0].namaBahan)
            print(tampilUser)
        } else {
            selectionButtonProtein.alpha = 1.0
        }
        
    }
    
    @IBAction func pressVitA(_ sender: Any)
    {
        selectedItems.append(JenisZatGizi.VitaminA)
        selectionButtonVitaminA.alpha = 0.4
//        tampilUserChecker(arrBahanMakanan: arrBahanMakanan, PilihanUser: JenisZatGizi.VitaminA)
        tampilUser1()
        print(tampilUser)
    }

    @IBAction func pressVitB1(_ sender: Any) {
        selectedItems.append(JenisZatGizi.VitaminB1)
        selectionButtonVitaminB1.alpha = 0.4
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB2(_ sender: Any) {
        selectionButtonVitaminB2.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminB2)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB3(_ sender: Any) {
        selectionButtonVitaminB3.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminB3)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB6(_ sender: Any) {
        selectionButtonVitaminB6.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminB6)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB9(_ sender: Any) {
        selectionButtonVitaminB9.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminB9)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitB12(_ sender: Any) {
        selectionButtonVitaminB12.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminB12)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitC(_ sender: Any) {
        selectionButtonVitaminC.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminC)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitD(_ sender: Any) {
        selectionButtonVitaminD.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminD)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitE(_ sender: Any) {
        selectionButtonVitaminE.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminE)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressVitK(_ sender: Any) {
        selectionButtonVitaminK.alpha = 0.4
        selectedItems.append(JenisZatGizi.VitaminK)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressKalsium(_ sender: Any) {
        selectionButtonKalsium.alpha = 0.4
        selectedItems.append(JenisZatGizi.Kalsium)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressFosfor(_ sender: Any) {
        selectionButtonFosfor.alpha = 0.4
        selectedItems.append(JenisZatGizi.Fosfor)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressMagnesium(_ sender: Any) {
        selectionButtonMagnesium.alpha = 0.4
        selectedItems.append(JenisZatGizi.Magnesium)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressZatBesi(_ sender: Any) {
        selectionButtonZatBesi.alpha = 0.4
        selectedItems.append(JenisZatGizi.ZatBesi)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressYodium(_ sender: Any) {
        selectionButtonYodium.alpha = 0.4
        selectedItems.append(JenisZatGizi.Yodium)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressZinc(_ sender: Any) {
        selectionButtonZinc.alpha = 0.4
        selectedItems.append(JenisZatGizi.Zinc)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressSelenium(_ sender: Any) {
        selectionButtonSelenium.alpha = 0.4
        selectedItems.append(JenisZatGizi.Selenium)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressMangan(_ sender: Any) {
        selectionButtonMangan.alpha = 0.4
        selectedItems.append(JenisZatGizi.Mangan)
        tampilUser1()
        print(arrBahanMakanan[0].namaBahan)
    }
    
    @IBAction func pressSelanjutnya(_ sender: Any) {
        contentViewInHC = UIHostingController(rootView: BahanMakananListView(tampilUser: tampilUser))
        setupHC()
        setupConstraints()
    }
}



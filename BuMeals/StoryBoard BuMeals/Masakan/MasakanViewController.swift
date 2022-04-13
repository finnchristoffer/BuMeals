//
//  MasakanViewController.swift
//  BuMeals
//
//  Created by Aria Rifqi on 13/04/22.
//

import UIKit

class MasakanViewController: UIViewController {
    @IBOutlet weak var labelMakanan: UILabel!
    @IBOutlet weak var labelBahan: UILabel!
    @IBOutlet weak var labelCaraPembuatan: UILabel!
    @IBOutlet weak var textBahan: UITextView!
    @IBOutlet weak var textCaraPembuatan: UITextView!
    @IBOutlet weak var buttonTest: UIButton!
    @IBOutlet weak var imgMasakan: UIImageView!
    
    
    //TESTING BUTTON ON CLICK
    @IBAction func testButton(_ sender: Any) {
        labelBahan.text = "Aria Ganteng"
        labelMakanan.text = "Aria Ganteng"
        labelCaraPembuatan.text = "Aria Ganteng"
        textBahan.text = "Aria Ganteng"
        textCaraPembuatan.text = "Aria Ganteng"
        imgMasakan.image = UIImage(named: "Bayam")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

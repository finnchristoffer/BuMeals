//
//  ViewController.swift
//  BuMeals
//
//  Created by Evan Susanto on 08/04/22.
//

import Foundation

struct ItemListView:View{
    var body:some View{
        List(0..<20){item in
            Image("average-dev")
                .resizeable()
                .scaledToFit()
                .frame(height:70)
                .cornerRadius(4)
            Vstack(alignment:.leading, spacing:5){
                Text("Im an Average developer")
                    .fontWeight(.semibold)
                    .lineLimit(2)
                Text("Januari 1,2021")
                    .font (.subheadline)
                    .foregroundColor(.secondary)
                
            }
        }
        .navigationTitle("Sean top 10")
    }
}


struct Item {
    String title
    String subtitle
    String typeFood
    String image
    Int menuPilihan
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

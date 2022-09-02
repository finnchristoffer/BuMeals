//
//  File 2.swift
//  testApp
//
//  Created by Evan Susanto on 14/04/22.
//

import Foundation
import SwiftUI

struct ResepDetailView:View{
    var item:ResepMakanan
    var body:some View{
        ZStack{
            Color(.white)
                .ignoresSafeArea()
        VStack(spacing:5){
            Image(item.gambarMasakan)
                .resizable()
                .scaledToFit()
//                .padding(.top,50)
//                .padding([.horizontal,.leading],100)
//                .frame(width:500, height:250,alignment:.center)
//                .background(.white)
//                .cornerRadius(12)
//                .edgesIgnoringSafeArea(.top)
            Text(item.titleMakanan)
                .font(.title)
                .lineLimit(2)
            Text("Bahan")
                .font(.title)
                .lineLimit(2)
            Text(item.daftarBahanMasakan)
                .frame(maxWidth: .infinity, maxHeight: 500, alignment: .leading)
                .padding(.leading,75)
                .padding(.trailing,65)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
            Text("Cara Masak:")
                .font(.title)
                .lineLimit(2)
            Text(item.caraMasakan)
//                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 500, alignment: .leading)
                .padding(.leading,75)
                .padding(.trailing,65)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
//                .multilineTextAlignment(.leading)
//                .padding(.horizontal)
//            ScrollView{
//                LazyVGrid(columns: arr, spacing: spacing){
//
//                }
//            }
        }
    }
    }
}

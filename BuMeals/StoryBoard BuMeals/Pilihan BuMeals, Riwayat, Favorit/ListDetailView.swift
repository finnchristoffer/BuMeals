//
//  File.swift
//  testApp
//
//  Created by Evan Susanto on 11/04/22.
//

import Foundation
import SwiftUI

struct ContentDetailView:View{
    var item:BahanMakanan
    var body:some View{
        VStack(spacing:20){
            Image(item.gambarBahan)
                .resizable()
                .scaledToFit()
                .frame(width: 0, height: 50, alignment: .center)
                .cornerRadius(12)

            Text(item.namaBahan)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack{
                Text(item.definisiBahan)
            }
            Spacer()
            HStack(spacing:40){
                Text("Baca")
                    .frame(width: 50, height: 50, alignment: .leading)
                Text("Evan Susanto Panjang")
                    .frame(width: 50, height: 50, alignment: .bottom)
            }

        }
    }
}

//struct ContentDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentDetailView(item:SayurBayam)
//    }
//}

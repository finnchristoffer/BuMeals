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
    var arr:[String]=[]
    let spacing:CGFloat=10
    mutating func gabungArray(items:BahanMakanan)->Void{
        for item in items.arrOfZatGizi{
            arr.append(items.checkJenisZatGiziName(jenisZatGizi: item ))
        }
    }
    let columns=Array(repeating: GridItem(.flexible(),spacing:10), count:  3)
    var i=0
    var body:some View{
        NavigationView {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
        VStack(spacing:5){
            Image(item.gambarBahan)
                .resizable()
                .scaledToFit()
//                .padding(.top,50)
//                .padding([.horizontal,.leading],100)
//                .frame(width:500, height:250,alignment:.center)
//                .background(.white)
//                .cornerRadius(12)
//                .edgesIgnoringSafeArea(.top)
            Text(item.namaBahan)
                .font(.title)
                .lineLimit(2)
                Spacer()
//            ScrollView{
//                LazyVGrid(columns: columns,spacing: 10){
//                    ForEach(0..<arr.count){ i in
//                        Text(arr[i])
//                            .frame(height: 20)
//
//
//                    }
//                }.padding(70)
//            }
            Text("Tentang"+" "+item.namaBahan)
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.trailing)
                
            Text(item.definisiBahan)
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
            
            HStack(spacing:10){
                    NavigationLink(
                        destination: ResepDetailView(item:item.arrOfResep[0])) {
                            CardView(gambar:item.arrOfResep[0].gambarMasakan, title: item.arrOfResep[0].titleMakanan, bahanMakanan: "")
                        }
                
                
                        NavigationLink(
                            destination: ResepDetailView(item:item.arrOfResep[1])) {
                                CardView(gambar:item.arrOfResep[1].gambarMasakan, title: item.arrOfResep[1].titleMakanan, bahanMakanan: "")
                            }
            }
        }
    }
        }
}
//struct ContentDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentDetailView(item)
//    }
//}
struct CardView: View{
    var gambar:String?
    var title:String?
    var bahanMakanan:String?
        var body: some View {
            
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(SwiftUI.Color.gray, lineWidth: 1)
                    .frame(width: cardAndImageWidth, height: cardHeight)
                    .background(SwiftUI.Color.white)
                VStack(alignment: .leading, spacing: 10) {
                    Image(gambar!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: cardAndImageWidth, height: 100)
                        .clipped()
                    LazyVStack(alignment: .leading, spacing: 2) {
                        Text(title!)
                            .font(.custom("Avenir", size: 14))
                            .fontWeight(.bold)
                        Text(bahanMakanan!)
                            .font(.custom("Avenir", size: 12))
                            .foregroundColor(SwiftUI.Color.gray)
                    }
                    .padding(.horizontal,12)
                    .padding(.bottom,11)
                }
                .frame(width: cardAndImageWidth, height: cardHeight)
                .cornerRadius(cornerRadius)
            }
            
        }
        private let cardAndImageWidth: CGFloat = 170
        private let cardHeight: CGFloat = 174
        private let imageHeight: CGFloat = 116
        private let cornerRadius: CGFloat = 20
    }
}

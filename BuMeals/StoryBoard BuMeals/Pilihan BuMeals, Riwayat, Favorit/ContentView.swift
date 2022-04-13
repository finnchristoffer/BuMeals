import SwiftUI


//var arrBahanMakanan:[BahanMakanan]=[Bayam,Bayam,Bayam]
//var arrOfPilihanUser:[JenisZatGizi]=[JenisZatGizi.Protein,JenisZatGizi.VitaminB2]
//var tampilUser:[BahanMakanan]=[]
//func tampilUserChecker(arrBahanMakanan:[BahanMakanan],PilihanUser:JenisZatGizi) -> Void{
//            for itemPilihan in arrBahanMakanan{
//                if itemPilihan.checkIfZatGiziExists(jenisZatGizi: PilihanUser){
//                    if tampilUser.contains(itemPilihan){
//                        continue
//                    }else{
//                        tampilUser.append(itemPilihan)
 //                   }
//
//                }
//        }
//    }

struct BahanMakananListView: View {
    let tampilUser:[BahanMakanan]?
    init(tampilUser:[BahanMakanan]){
        self.tampilUser=tampilUser
    }
    var body:some View {
        VStack(alignment:.leading,spacing: 10){
            NavigationView{
                List(tampilUser!,id: \.id){item in
                    NavigationLink(destination:ContentDetailView(item: item),label:{
                    Image(item.gambarBahan)
                        .resizable()
                        .scaledToFit()
                        .frame(height:90)
                        .cornerRadius(4)
                    VStack(alignment: .leading, spacing: 5){
                        Text(item.namaBahan)
                            .fontWeight(.bold)
                            .lineLimit(2)
                            .font(.system(size: 20))
                            .minimumScaleFactor(0.5)
                        Text((item.tipeBahan+" / "+item.checkJenisZatGiziName(jenisZatGizi: item.arrOfZatGizi[0])))
                            .font(.system(size: 15, weight:.light))
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        Text("(String(item.countMenuPilihanBahan)) Menu Bahan")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
               )}
                .navigationTitle("Pilihan BuMeals")

            }
        }

        }
    }
struct ContentView_Previews:PreviewProvider{
    static var previews: some View{
        BahanMakananListView(tampilUser: [])
    }
}

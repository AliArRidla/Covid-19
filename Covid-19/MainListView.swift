import SwiftUI

struct MainListView: View {
    let infoCells = [
        MainCellData(image: "text.badge.plus", color: .red, title: "What You Can Do", body: "Same text An up-to-date rundom of the virus and its symptoms", aboutCellData: [
        AboutCellData(image: "dial.fill", color: .yellow, title: "Washing your hands", previewBody: "Lots of preview od stuff", body: "Lots more text about stuff"),
        AboutCellData(image: "dial.fill", color: .yellow, title: "Washing your hands", previewBody: "Lots of preview od stuff", body: "Lots more text about stuff")
        ]),
        MainCellData(image: "bolt.circle.fill", color: .orange, title: "What You Can Do", body: "Same text An up-to-date rundom of the virus and its symptoms", aboutCellData: [
        AboutCellData(image: "star.fill", color: .yellow, title: "Washing your hands", previewBody: "Lots of preview od stuff", body: "Lots more text about stuff")
        ]),
        MainCellData(image: "hare.fill", color: .yellow, title: "What You Can Do", body: "Same text An up-to-date rundom of the virus and its symptoms", aboutCellData: [
        AboutCellData(image: "star.fill", color: .orange, title: "Washing your hands", previewBody: "Lots of preview od stuff", body: "Lots more text about stuff")
        ]),
        MainCellData(image: "app.fill", color: .blue, title: "COVID Testing", body: "Same text An up-to-date rundom of the virus and its symptoms", aboutCellData: [
       AboutCellData(image: "star.fill", color: .orange, title: "Washing your hands", previewBody: "Lots of preview od stuff", body: "Lots more text about stuff")
       ])
    
    ]
    
    var body: some View {
        ForEach(infoCells, id: \.self) { cell in
            NavigationLink(destination: AboutView(aboutData: cell.aboutCellData)){
                HStack(alignment: .top) {
                    ZStack {
                        Circle()
                            .foregroundColor(cell.color)
                            .frame(width: 44,height: 44)
                        
                        Image(systemName: cell.image)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing)
                    
                    VStack(alignment: .leading) {
                        Text(cell.title)
                            .fontWeight(.bold)
                        
                        Text(cell.body)
                    }
                }
            .padding()
            }
            .frame(height: 120)
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .previewLayout(.sizeThatFits)
    }
}

struct MainCellData: Hashable {
    let image : String
    let color : Color
    let title : String
    let body  : String
    let aboutCellData: [AboutCellData]
}



struct AboutCellData: Hashable {
    let image : String
    let color : Color
    let title : String
    let previewBody  : String
    let body  : String
    
}

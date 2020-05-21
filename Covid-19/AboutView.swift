import SwiftUI

struct AboutView: View {
    let aboutData: [AboutCellData]
    @State private var isShowing = false
    var body: some View {
        ScrollView(.vertical) {
        ForEach(aboutData, id: \.self) { item in
            VStack {
                HStack {
                    Image(systemName: item.image)
                        .font(.title)
                        .foregroundColor(item.color)
                        .frame(width:50)
                        .padding(.trailing)
//                        .background(Color.pink)
                    
                VStack(alignment: .leading) {
                    Text(item.title)
                        .fontWeight(.heavy)
                    
                    Text(item.previewBody)
                    }
                }
                .padding()
                
                Divider()
                    .padding(.horizontal)
                HStack {
                    Button(action: {
                        self.isShowing.toggle()
                    }){
                        Text("Learn more")
                        .bold()
                    }
                    Spacer()
                }
                .padding()
                .sheet(isPresented: self.$isShowing){
                    LearnMoreView(isShowing: self.$isShowing)
                    
                }
            }
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(color: Color.secondary.opacity(0.4), radius: 4, x: 0, y: 8)
            .padding()
        }
      }
        .navigationBarTitle("\(aboutData[0].title)")
        .background(Color(.systemGroupedBackground))
    }
}

struct AboutView_Previews: PreviewProvider {
//    @State var isTest = false
    static var previews: some View {
        AboutView(aboutData: [AboutCellData(image: "staroflife.fill", color: .blue, title: "Percobaan", previewBody: "A preview of more text", body: "More text coming soon")])
        
//        LearnMoreView(isShowing: $isTest)
    }
}


//MARK: - New .swift file.
struct LearnMoreView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ScrollView {
            HStack {
                Spacer()
                Button(action: {
                    self.isShowing.toggle()
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(.systemGray3))
                }
            }
            .padding([.top, .trailing])
            HStack {
                Image(systemName: "waveform.path.ecg")
                    .font(.largeTitle)
                    .foregroundColor(Color(.systemTeal))
                Spacer()
            }
            .padding(.horizontal)
            
            HStack{
                Text("Social Distancing")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding([.leading, .bottom])
                Spacer()
            }
            
        Text("The main way COVID-19 spreads is between people")
            

            HStack {
                Text("How to")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
                Spacer()
            }
        Text("More text here")
        }
    }
}

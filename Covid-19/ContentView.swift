import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView {
                    List {
                        TopInfoView(isShowing: $isShowing)
                        .sheet(isPresented: $isShowing) {
                            ResultsView(isShowing: self.$isShowing)
                        }
                        MainListView()
                    }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        }
    }
}

//MARK: - New .swift file.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: - New .swift file.
struct TopLogoView : View {
    var body: some View {
        HStack{
             Circle()
                 .frame(width: 44)
             
             Rectangle()
                 .frame(width: 1, height: 44)
             
             Circle()
                 .frame(width: 44)
            Spacer()
         }
        .padding(.vertical, -8)
    }
    
}

//MARK: - New .swift file.
struct TopInfoView : View {
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            TopLogoView()
            HeaderView()
            TextAndImageInfoView()
            VButtons(isShowing: $isShowing)
        }
    .padding()
        .background(
        LinearGradient(gradient: Gradient(colors:[Color(.systemBackground),Color(.systemGray4)]),startPoint: .top, endPoint: .bottom )
        )
        
        .listRowInsets(EdgeInsets())
    }
    
}

//MARK: - New .swift file.
struct HeaderView : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("COVID-19")
                .font(.title)
                .fontWeight(.heavy)
            
            Text("Screening Tool")
            .font(.title)
            .fontWeight(.heavy)
        }
    }
    
}

//MARK: - New .swift file.
struct TexInfoView: View {
    var body: some View{
        VStack(alignment: .leading){
            Text("""
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
""")
            .lineLimit(2)
            .padding(.bottom)
        
                
            Text("""
consectetur adipiscing elit,
sed do eiusmod
tempor incididunt
""")
        }
        .frame(width: UIScreen.main.bounds.width / 1.8)
//            .frame(maxWidth: .infinity)
        
    }
}

//MARK: - New .swift file.
struct TextAndImageInfoView:View {
    var body: some View{
        HStack{
            TexInfoView()
            
            Spacer()
            Image("person")
                .padding()
                .scaleEffect(1.7)
                .offset(y: -50)
                .offset(x: 19)
        }
    }
}

//MARK: - New .swift file.
struct VButtons: View {
    let buttonLabels = ["Start Screening", "View Previous Results"]
    
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            ForEach(buttonLabels, id: \.self) { label in
                Button(action: {
                    if  self.buttonLabels.contains("Results"){
                    self.isShowing.toggle()
                    }
                }){
                    Text(label)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32,height: 50)
                    
                        .background(Color.blue)
                    .cornerRadius(12)
                        .padding(.vertical,8)
                }
            }
        }
        .padding(.top,24)
    }
}


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                    List {
                        TopInfoView()
                        ForEach(0 ..< 4) { _ in
                            NavigationLink(destination: Text("Coming")){
                                HStack {
                                    ZStack {
                                        Circle()
                                            .foregroundColor(.yellow)
                                            .frame(width: 44)
                                        
                                        Image(systemName: "staroflife.fill")
                                            .foregroundColor(.white)
                                    }
                                    .padding(.trailing)
                                    
                                    VStack(alignment: .leading) {
                                        Text("About COVID-19 ")
                                            .fontWeight(.bold)
                                        
                                        Text("""
An up-to-date rundom of the virus and its symptoms
""")
                                    }
                                }
                            }
                        }
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
        .padding(.vertical, -88)
    }
    
}

//MARK: - New .swift file.
struct TopInfoView : View {
    var body: some View {
        VStack(alignment: .leading) {
            TopLogoView()
            HeaderView()
            TextAndImageInfoView()
            VButtons()
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
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
//            .lineLimit(nil)
                    .padding(.bottom)
                
                Text("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat exercitation. ")
        }
        .frame(width: UIScreen.main.bounds.width / 2.2)
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
    let buttonLabels = ["Start Screening", "View Previous"]
    
    var body: some View {
        VStack {
            ForEach(buttonLabels, id: \.self) { label in
                Button(action: {
                    //do
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


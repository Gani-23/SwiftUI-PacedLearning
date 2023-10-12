import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack(alignment: .center){
            Image("homeScreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .frame(width: 420, height: 480)
            Text("Hello There")
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Image(systemName: "play.fill")
                .padding(.top, 3.0)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .cornerRadius(100)
        }
    }
}
struct ConsolePreview : PreviewProvider{
    static var previews: some View{
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}


import SwiftUI

public struct introView: View {
    
    @Binding var viewState: Int
    @State var animate: Int = 0
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        ZStack{
            
            Image(uiImage: UIImage(named: "hello.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 300, alignment: .center)
                .offset(y: -10)
            
            Button(action: {
                withAnimation{
                    viewState = 1
                }
            }){
                Image(uiImage: UIImage(named: imageToggle ? "begin.png" : "begin2.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 100, alignment: .center)
                    .onReceive(timer) { _ in
                        imageToggle.toggle()
                    }
            }
            .offset(y: +160)
        }
    }
}




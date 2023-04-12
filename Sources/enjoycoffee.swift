import SwiftUI

public struct enjoy1: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoy1.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
}

public struct enjoy2: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoy2.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
}


public struct enjoy3: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoy3.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
}

public struct avo1: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoyavo1.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
}


public struct avo2: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoyavo2.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
}


public struct avo3: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoyavo3.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
}


public struct straw1: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoystraw1.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
}

public struct straw2: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoystraw2.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
    
}

public struct straw3: View {
    
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        Image(uiImage: UIImage(named: "enjoystraw3.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450, alignment: .center)
                    .offset(y: +70)
        
        
        Button(action: {
            withAnimation{
            viewState = 0
            }
        }){
            Image(uiImage: UIImage(named: imageToggle ? "makeagain.png" : "makeagain2.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                .onReceive(timer) { _ in
                    imageToggle.toggle()
                            }
        }
        .offset(y: +370)
    }
}

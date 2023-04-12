import SwiftUI

public struct makeCoffee: View{
    
    @State var brewCoffee: Int = 0
    @State var fillGlass: Int = 0
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle1: Bool = false
    @State var imageToggle2: Bool = false
    
    public var body: some View {
        
        ZStack{
            VStack{
                // brewcoffee text
                Image(uiImage: UIImage(named: "brewcoffee.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 40, alignment: .center)
                    .offset(y: +35)
                
                // coffee machine brewing
                Button(action:{
                    if brewCoffee == 0 {
                        withAnimation{
                            brewCoffee = 1
                            DispatchQueue.main.asyncAfter(deadline: .now()+1){
                                brewCoffee = 2
                            }
                        }
                    }
                    
                }){
                    Image(uiImage: UIImage(named: "coffeemachine.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .center)
                }
                .offset(y: +30)
            }
            
            
            Image(uiImage: UIImage(named: "pot.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .offset(x: -5, y: +133)
                .opacity(brewCoffee == 0 ? 1 : 0)
                .allowsHitTesting(false)
                .disabled(true)
            
            // pour coffee to cup
            Button(action: {
                if brewCoffee == 2 {
                    fillGlass += 1
                    DispatchQueue.main.asyncAfter(deadline: .now()){
                        brewCoffee = 0
                    }
                }
            }){
                Image(uiImage: UIImage(named: brewCoffee == 1 ? "pot4.png" : "pot5.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                    .opacity(brewCoffee >= 1 ? 1 : 0)
            }
            .offset(x: -5, y: +133)
            
            
            Image(uiImage: UIImage(named: "gelasaja.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175, height: 175, alignment: .center)
                .offset(y: +325)
                .opacity(fillGlass >= 1 ? 0 : 1)
            
            
            Image(uiImage: UIImage(named: "justcoffee.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175, height: 175, alignment: .center)
                .offset(y: +325)
                .opacity(fillGlass >= 1 ? 1 : 0)
            
            // tap here animation
            Image(uiImage: UIImage(named: "taphere")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 50, alignment: .center)
                .offset(x: imageToggle1 ? -130 : -120, y: -20)
                .onReceive(timer){ _ in
                    imageToggle1.toggle()
                }
                .opacity(brewCoffee >= 1 ? 0 : 1)
                .opacity(fillGlass >= 1 ? 0 : 1)
            
            Image(uiImage: UIImage(named: "taphere")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 50, alignment: .center)
                .offset(x: imageToggle1 ? -130 : -120, y: +130)
                .onReceive(timer){ _ in
                    imageToggle2.toggle()
                }
                .opacity(brewCoffee >= 2 ? 1 : 0)
                .opacity(fillGlass >= 1 ? 0 : 1)
            
            
            // tap arrow for next step
            HStack{
                Spacer()
                
                Button(action: {
                    viewState = 2
                }){
                    Image(uiImage: UIImage(named: "rightarrow.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                        .opacity(fillGlass >= 1 ? 1 : 0)
                        .allowsHitTesting(false)
                        .disabled(true)
                }
            }
            
        }
        
    }
}


public struct addMilk: View {
    
    @State var milkAdded: Int = 0
    @Binding var viewState: Int
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var imageToggle: Bool = false
    
    public var body: some View {
        
        ZStack{
            
            VStack{
                
                // add milk text
                Image(uiImage: UIImage(named: "addmilk.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 40, alignment: .center)
                    .offset(y: -15)
                
                // pour milk to glass
                Button(action: {
                    withAnimation{
                        milkAdded += 1
                    }
                }){
                    Image(uiImage: UIImage(named: "milk")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 200, alignment: .center)
                }
                .offset(y: +10)
            }
            
            
            // now you have latte
            Image(uiImage: UIImage(named: milkAdded == 0 ? "justcoffee.png" : "milkcoffee.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175, height: 175, alignment: .center)
                .offset(y: +325)
            
            // animate tap here
            Image(uiImage: UIImage(named: "taphere")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 50, alignment: .center)
                .offset(x: imageToggle ? -130 : -120)
                .onReceive(timer){ _ in
                    imageToggle.toggle()
                }
                .opacity(milkAdded >= 1 ? 0 : 1)
            
            // arrow to next step
            HStack{
                Spacer()
                
                Button(action: {
                    viewState = 3
                }){
                    Image(uiImage: UIImage(named: "rightarrow.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                        .opacity(milkAdded >= 1 ? 1 : 0)
                        .allowsHitTesting(false)
                        .disabled(true)
                }
            }
            
        }
    }
}


public struct freshFruit: View {
    
    @State var pickFruit: Int = 0
    @Binding var viewState: Int
    
    public var body: some View {
        
        ZStack{
            
            // text
            VStack{
                
                Image(uiImage: UIImage(named: "avoorstraw.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 60, alignment: .center)
                    .offset(y: -50)
                
                // pick flavor
                HStack{
                    
                    Button(action:{
                        withAnimation{
                            pickFruit = 1
                        }
                    }){
                        Image(uiImage: UIImage(named: "avocado.png")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .center)
                    }
                    .offset(x: -50)
                    
                    Button(action:{
                        withAnimation{
                            pickFruit = 2
                        }
                    }){
                        Image(uiImage: UIImage(named: "strawberry.png")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .center)
                    }
                }
                .offset(x: +20)
            }
            
            
            Image(uiImage: UIImage(named: "milkcoffee.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175, height: 175, alignment: .center)
                .offset(y: +325)
                .opacity(pickFruit == 0 ? 1 : 0)
            
            
            Image(uiImage: UIImage(named: "avocoffee.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 227, height: 227, alignment: .center)
                .offset(y: +300)
                .opacity(pickFruit == 1 ? 1 : 0)
            
            
            Image(uiImage: UIImage(named: "strawcoffee.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 227, height: 227, alignment: .center)
                .offset(y: +300)
                .opacity(pickFruit == 2 ? 1 : 0)
            
            // next step
            HStack{
                
                Spacer()
                
                Button(action: {
                    
                    if pickFruit == 0 {
                        viewState = 4
                    }else if pickFruit == 1 {
                        viewState = 8
                    }else if pickFruit == 2 {
                        viewState = 12
                    }
                    
                }){
                    Image(uiImage: UIImage(named: "rightarrow.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                }
            }
        }
    }
}


public struct noFruit: View {
    
    @State var latte: Bool = true
    @State var moreCream: Int = 0
    @Binding var viewState: Int
    
    public var body: some View {
        
        ZStack{
            
            // text whip cream
            VStack{
                
                Image(uiImage: UIImage(named: "ilovewhipcream.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 50, alignment: .center)
                    .offset(y: +35)
                
                // Add cream
                HStack{
                    
                    Button(action:{
                        withAnimation{
                            latte = false
                            moreCream = 1
                        }
                    }){
                        Image(uiImage: UIImage(named: "whippedcream.png")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 200, alignment: .center)
                    }
                    .offset(x: -50)
                    
                    Button(action:{
                        withAnimation{
                            if latte == false {
                                moreCream = 2
                            }
                        }
                    }){
                        Image(uiImage: UIImage(named: "choco.png")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 95, height: 295, alignment: .center)
                    }
                    .offset(x: +20)
                }
                
                
            }
            
            
            Image(uiImage: UIImage(named: "milkcoffee.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175, height: 175, alignment: .center)
                .offset(y: +325)
            
            
            Image(uiImage: UIImage(named: "whipp.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 115, height: 115, alignment: .center)
                .offset(y: +240)
                .opacity(moreCream >= 1 ? 1 : 0)
            
            Image(uiImage: UIImage(named: "whipchoco.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 115, height: 115, alignment: .center)
                .offset(y: +240)
                .opacity(moreCream >= 2 ? 1 : 0)
            
            
            HStack{
                Spacer()
                
                Button(action:{
                    if latte == true {
                        viewState = 5
                    } else if moreCream == 1 {
                        viewState = 6
                    }else if moreCream == 2 {
                        viewState = 7
                    }
                }){
                    Image(uiImage: UIImage(named: "rightarrow.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                }
            }
            
            
        }
        
    }
}


public struct pickedAvo: View {
    
    @State var justAvo: Bool = true
    @State var moreCream: Int = 0
    @Binding var viewState: Int
    
    public var body: some View {
        
        ZStack{
            
            // text whip cream
            VStack{
                
                Image(uiImage: UIImage(named: "ilovewhipcream.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 50, alignment: .center)
                    .offset(y: +35)
                
                // Add cream
                HStack{
                    
                    Button(action:{
                        withAnimation{
                            justAvo = false
                            moreCream = 1
                        }
                    }){
                        Image(uiImage: UIImage(named: "whippedcream.png")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 200, alignment: .center)
                    }
                    .offset(x: -50)
                    
                    Button(action:{
                        withAnimation{
                            if justAvo == false {
                                moreCream = 2
                            }
                        }
                    }){
                        Image(uiImage: UIImage(named: "choco.png")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 95, height: 295, alignment: .center)
                    }
                    .offset(x: +20)
                }
                
                
            }
            
            
            Image(uiImage: UIImage(named: "avocoffee.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 227, height: 227, alignment: .center)
                .offset(y: +300)
            
            
            Image(uiImage: UIImage(named: "whipp.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 115, height: 115, alignment: .center)
                .offset(y: +240)
                .opacity(moreCream >= 1 ? 1 : 0)
            
            Image(uiImage: UIImage(named: "whipchoco.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 115, height: 115, alignment: .center)
                .offset(y: +240)
                .opacity(moreCream >= 2 ? 1 : 0)
            
            
            HStack{
                Spacer()
                
                Button(action:{
                    if justAvo == true {
                        viewState = 9
                    } else if moreCream == 1 {
                        viewState = 10
                    }else if moreCream == 2 {
                        viewState = 11
                    }
                }){
                    Image(uiImage: UIImage(named: "rightarrow.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                }
            }
            
            
        }
        
    }
}


public struct pickedStraw: View {
    
    @State var justStraw: Bool = true
    @State var moreCream: Int = 0
    @Binding var viewState: Int
    
    public var body: some View {
        
        ZStack{
            
            // text whip cream
            VStack{
                
                Image(uiImage: UIImage(named: "ilovewhipcream.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 50, alignment: .center)
                    .offset(y: +35)
                // Add cream
                HStack{
                    
                    Button(action:{
                        withAnimation{
                            justStraw = false
                            moreCream = 1
                        }
                    }){
                        Image(uiImage: UIImage(named: "whippedcream.png")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 200, alignment: .center)
                    }
                    .offset(x: -50)
                    
                    Button(action:{
                        withAnimation{
                            if justStraw == false {
                                moreCream = 2
                            }
                        }
                    }){
                        Image(uiImage: UIImage(named: "choco.png")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 95, height: 295, alignment: .center)
                    }
                    .offset(x: +20)
                }
                
                
            }
            
            
            Image(uiImage: UIImage(named: "strawcoffee.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 227, height: 227, alignment: .center)
                .offset(y: +300)
            
            
            Image(uiImage: UIImage(named: "whipp.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 115, height: 115, alignment: .center)
                .offset(y: +240)
                .opacity(moreCream >= 1 ? 1 : 0)
            
            Image(uiImage: UIImage(named: "whipchoco.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 115, height: 115, alignment: .center)
                .offset(y: +240)
                .opacity(moreCream >= 2 ? 1 : 0)
            
            
            HStack{
                Spacer()
                
                Button(action:{
                    if justStraw == true {
                        viewState = 13
                    } else if moreCream == 1 {
                        viewState = 14
                    }else if moreCream == 2 {
                        viewState = 15
                    }
                }){
                    Image(uiImage: UIImage(named: "rightarrow.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                }
            }
            
            
        }
        
    }
}


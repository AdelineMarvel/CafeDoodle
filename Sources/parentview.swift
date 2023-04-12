import SwiftUI

public struct parentView: View {
    public init() {}
    
    @State var viewState: Int = 0
    
    public var body: some View {
        ZStack{
            
            Image(uiImage: UIImage(named: "cafeshop.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 414, height: 896, alignment: .center)
            
            
            switch viewState{
            case 1: makeCoffee(viewState: $viewState)
            case 2: addMilk(viewState: $viewState)
            case 3: freshFruit(viewState: $viewState)
            case 4: noFruit(viewState: $viewState)
            case 5: enjoy1(viewState: $viewState)
            case 6: enjoy2(viewState: $viewState)
            case 7: enjoy3(viewState: $viewState)
            case 8: pickedAvo(viewState: $viewState)
            case 9: avo1(viewState: $viewState)
            case 10: avo2(viewState: $viewState)
            case 11: avo3(viewState: $viewState)
            case 12: pickedStraw(viewState: $viewState)
            case 13: straw1(viewState: $viewState)
            case 14: straw2(viewState: $viewState)
            case 15: straw3(viewState: $viewState)
            default:
                introView(viewState: $viewState)
            }
    }
}
}


public var parentview = parentView()

public extension UIViewController {
    
    func addSubSwiftUIView<Content>(_ swiftUIView: Content, to view: UIView) where Content : View {
        let hostingController = UIHostingController(rootView: swiftUIView)
        
        
        addChild(hostingController)
        
        
        view.addSubview(hostingController.view)
        
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            view.topAnchor.constraint(equalTo: hostingController.view.topAnchor),
            view.leftAnchor.constraint(equalTo: hostingController.view.leftAnchor),
            view.bottomAnchor.constraint(equalTo: hostingController.view.bottomAnchor),
            view.rightAnchor.constraint(equalTo: hostingController.view.rightAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
        hostingController.didMove(toParent: self)
    }
}





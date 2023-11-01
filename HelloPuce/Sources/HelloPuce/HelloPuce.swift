import UIKit
public struct HelloPuce {
    public private(set) var text = "Hello, World!"

    public init(saludo: String) {
        self.text = saludo
    }

    public func saludar () {
        print("Bienvenidos al curso de iOS")
    }
    public func showHelloView(view: UIViewController?) {
        guard let vc = view  else {
            return
        }
        let helloViewController = HelloViewController()
        vc.present(helloViewController, animated: true, completion: nil)

        
    }
}

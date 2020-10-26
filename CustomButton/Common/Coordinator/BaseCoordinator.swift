//
//  BaseCoordinator.swift
//  CustomButton
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 25/10/20.
//

import UIKit

enum PresentationType {
    case modal(viewController: UIViewController)
    case push(navigation: UINavigationController)
    
    public func associatedvalue() -> Any? {
        switch self {
        case .modal(let value):
            return value
        case .push(let value):
            return value
        }
    }
}


protocol Coordinator: AnyObject {
    associatedtype V: UIViewController
    var view: V? {get set}
    var navigation: UINavigationController? {get set}
    func start() -> V
    func start(usingPresentation Presentation: PresentationType)
}

extension Coordinator {
    
    func start() -> V {
        if let view = view {
            return view
        }
        fatalError("You cannot start coordinator without initializing property view!")
    }
    
    func start(usingPresentation Presentation: PresentationType) {
        switch Presentation {
        case .modal(let navigation):
            self.navigation = UINavigationController(rootViewController: start())
            guard let nav = self.navigation else { return }
            navigation.present(nav, animated: true, completion: nil)
        case .push(let navigation):
            self.navigation = navigation
            navigation.pushViewController(start(), animated: true)
        }
        
    }
}

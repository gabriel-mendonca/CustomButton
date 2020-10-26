//
//  ViewController.swift
//  CustomButton
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 25/10/20.
//

import UIKit

extension UIViewController {

    
    private static func genericInstance<T: UIViewController>() -> T {
        return T.init(nibName: String(describing: self), bundle: Bundle(for: self))
    }
    
    static func instantiate() -> Self {
        return genericInstance()
    }


}


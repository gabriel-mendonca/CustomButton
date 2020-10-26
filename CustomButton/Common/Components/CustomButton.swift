//
//  CustomButton.swift
//  CustomButton
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 25/10/20.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    //MARK: - Inspectable
    
    @IBInspectable var cornerRadius: CGFloat = 10.0 {
        didSet {
            setCornerRadius(radius: cornerRadius)
        }
    }
    
    @IBInspectable var borderWith: CGFloat{
        get  {
            return layer.borderWidth
        }
        set {
            setBorderWith(borderWith: newValue)
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            setBorderColor(borderColor: borderColor)
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        didSet {
            setShadowColor(shadow: shadowColor)
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 10.0 {
        didSet {
            setShadowOpacity(shadowOpacity: shadowOpacity)
        }
    }
    
    @IBInspectable var shadowCornerRadius: CGFloat = 10.0 {
        didSet {
            setShadowRadius(shadowRadius: shadowCornerRadius)
        }
    }
    
    //MARK: - constructor
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setNeedsDisplay()
        
    }
    
    func setShadowRadius(shadowRadius: CGFloat) {
        self.layer.shadowRadius = shadowRadius
    }
    
    func setShadowOpacity(shadowOpacity: Float) {
        self.layer.shadowOpacity = shadowOpacity
    }
    
    func setShadowColor(shadow: UIColor?) {
        self.layer.shadowColor = shadow?.cgColor
    }
    
    func setBorderColor(borderColor: UIColor?) {
        self.layer.borderColor = borderColor?.cgColor
    }
    
    func setBorderWith(borderWith: CGFloat) {
        self.layer.borderWidth = borderWith
    }
    
    func setCornerRadius(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func setup() {
        self.tintColor = .white
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 3
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.backgroundColor = UIColor.blue.cgColor
        self.titleLabel?.text = "button"
        self.titleLabel?.textColor = .white
        
    }
    
    override func setNeedsDisplay() {
        super.setNeedsDisplay()
    }
    
    
    
    
}

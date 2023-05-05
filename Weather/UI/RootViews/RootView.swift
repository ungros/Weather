//
//  RootView.swift
//  Weather
//
//  Created by Roman on 21.04.2023.
//

import UIKit

class RootView: UIView {
    
    let gradient = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        gradient.frame = bounds
        gradient.colors = [
                    UIColor.white.cgColor,
                    UIColor.blue.cgColor
                ]
        
                layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RootView {
    func setup() {
        backgroundColor = .black
    }
}

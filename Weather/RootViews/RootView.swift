//
//  RootView.swift
//  Weather
//
//  Created by Roman on 21.04.2023.
//

import UIKit

class RootView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
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

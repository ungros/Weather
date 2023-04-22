//
//  RootButton.swift
//  Weather
//
//  Created by Roman on 22.04.2023.
//

import UIKit

class RootButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension RootButton {
    func setup() {
        setTitleColor(UIColor(named:  "Button"), for: .normal)
        titleLabel?.font = UIFont(name: "Noto Sans Kannada Semibold", size: 14)
        

    }
}

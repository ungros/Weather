//
//  DayViewCell.swift
//  Weather
//
//  Created by Roman on 21.04.2023.
//

import UIKit
import SnapKit

class DayViewCell: UICollectionViewCell {
    
    static let reuseId = "DayViewCell"
    
    let stackView: UIStackView! = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.layer.cornerRadius = 7
        stack.backgroundColor = .red //UIColor(named: "Card")
        return stack
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DayViewCell {
    func setup() {
        
        addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
}

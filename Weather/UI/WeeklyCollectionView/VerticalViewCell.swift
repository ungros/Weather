//
//  DayViewCell.swift
//  Weather
//
//  Created by Roman on 21.04.2023.
//

import UIKit
import SnapKit

class VerticalViewCell: UICollectionViewCell {
    
    static let reuseId = "VerticalViewCell"
    
    let stackView: UIStackView! = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.layer.cornerRadius = 12
        stack.backgroundColor = UIColor(named: "VerticalViewCell")
        return stack
    }()
    
    let imageCircle: UIView = {
        let image = UIView()
        image.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: 40, height: 40))
        image.layer.cornerRadius = image.frame.size.height / 2
        image.clipsToBounds = true
        image.backgroundColor = .black
        
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension VerticalViewCell {
    func setup() {
        
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
            make.centerX.centerY.equalToSuperview()
        }
        
        stackView.addSubview(imageCircle)
        imageCircle.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
//            make.right.equalToSuperview().inset(287)
//            make.bottom.equalToSuperview().inset(16)
            make.centerX.equalToSuperview()
        }
    }
}

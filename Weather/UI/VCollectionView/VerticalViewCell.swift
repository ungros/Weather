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
        stack.axis = .horizontal
        stack.layer.cornerRadius = 12
        stack.backgroundColor = UIColor(named: "VerticalViewCell")
        return stack
    }()
    
    let dayLable: UILabel = {
        let lable = UILabel()
        lable.font = Extensions.Font.NSK_B(with: 14)
        lable.text = "Monday"
        return lable
    }()
    
    let conditionLable: UILabel = {
        let lable = UILabel()
        lable.font = Extensions.Font.NSK(with: 14)
        lable.textColor = UIColor(named: "Text")
        lable.text = "Light rain"
        return lable
    }()
    
    let degreeLable: UILabel = {
        let lable = UILabel()
        lable.font = Extensions.Font.NSK_B(with: 14)
        lable.text = "19 C"
        return lable
    }()
    
    let arrowButton: RootButton = {
        let button = RootButton(type: .system)
        button.setImage(UIImage(named: "coolicon"), for: .normal)
        button.tintColor = UIColor(named: "Symbol")
        button.sizeThatFits(CGSize(width: 24, height: 24))
        //button.addTarget(self, action: #selector(handlShowSearchScreen), for: .touchUpInside)
        return button
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
            
            make.leading.trailing.equalToSuperview()
            make.left.equalToSuperview().inset(16)
            
        
        }
        
        stackView.addSubview(degreeLable)
        degreeLable.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(56)
            make.centerY.equalTo(stackView)
        }
        
        stackView.addSubview(arrowButton)
        arrowButton.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(26)
            make.centerY.equalToSuperview()
        }
        
        stackView.addSubview(dayLable)
        dayLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(72)
            make.top.equalToSuperview().inset(18)
        }
        
        stackView.addSubview(conditionLable)
        conditionLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(72)
            make.top.equalToSuperview().inset(39)
        }
        }
    }


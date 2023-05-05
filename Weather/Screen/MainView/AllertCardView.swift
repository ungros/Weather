//
//  AllertCardView.swift
//  Weather
//
//  Created by Roman on 05.05.2023.
//

import UIKit
import SnapKit

final class AllertCardView: UIView {
    
    private let allertImage: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "cloud.bolt.fill"))
        image.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: 66, height: 66))
        image.backgroundColor = .clear
        image.tintColor = .red
        return image
    }()
    
    private let allertLable: UILabel = {
        let lable = UILabel()
        lable.textColor = .black
        lable.font = UIFont(name: <#T##String#>, size: <#T##CGFloat#>)
        return lable
    }()
    
    private let allertAnnotation: UILabel = {
        let image = UIImageView(image: UIImage(systemName: "cloud.bolt.fill"))
        image.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: 66, height: 66))
        image.backgroundColor = .clear
        image.tintColor = .red
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
       
       backgroundColor = UIColor(named: "Attention")
       layer.cornerRadius = 12
     
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension AllertCardView {
    
    func setup() {
        
        
        
        
        
        
        
        
        addSubview(allertImage)
        allertImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(16)
        }
    }
}

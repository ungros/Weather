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
        lable.font = Extensions.Font.NSK_B(with: 12)
        lable.numberOfLines = 2
        lable.text = "Cuaca esok hari kemungkinan akan terjadi hujan di siang hari"
        return lable
    }()
    
    private let allertLable2: UILabel = {
        let lable = UILabel()
        lable.textColor = UIColor(named: "Text")
        lable.font = Extensions.Font.NSK(with: 12)
        lable.numberOfLines = 2
        lable.text = "Jangan lupa bawa payung ya"
        return lable
    }()
    
    private let allertAnnotation: UIImageView = {
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
        
        addSubview(allertLable)
        allertLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(64)
            make.top.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(93)
            make.bottom.equalToSuperview().inset(36)
        }
        
        addSubview(allertLable2)
        allertLable2.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(64)
            make.top.equalToSuperview().inset(54)
            make.right.equalToSuperview().inset(93)
            
        }
    }
}

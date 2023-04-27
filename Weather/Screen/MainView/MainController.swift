//
//  MainController.swift
//  Weather
//
//  Created by Roman on 20.04.2023.
//

import UIKit
import SnapKit
import SwiftUI

class MainController: RootViewController {
    
    private var dayCollectionView = DayCollectionView()
    private var weekCollectionView = WeeklyCollectionView()
    
    private let mainCardView = MainCardView() 
//        let view = UIView()
//        view.layer.cornerRadius = 12
//        view.backgroundColor = .systemBlue
//        return view
//    }()
    
    let pinImage: UIImageView = {
        let pinImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        pinImage.contentMode = .scaleAspectFit
        pinImage.tintColor = UIColor(named: "Symbol")
        return pinImage
    }()
    
    private let locationButton: RootButton = {
        let button = RootButton(type: .system)
        button.setTitle("San Francisco, California", for: .normal)
        return button
    }()
    
    private let arrowButton: RootButton = {
        let button = RootButton(type: .system)
        button.setImage(UIImage(systemName: "arrowtriangle.down.fill"), for: .normal)
        button.tintColor = UIColor(named: "Symbol")
        
        button.addTarget(self, action: #selector(handlShowSearchScreen), for: .touchUpInside)
        return button
    }()
    
    private let hourLable: UILabel = {
        let lable = UILabel()
        lable.text = "Hourly Weather"
        lable.textColor = .black
        //lable.font = Extensions.Font.sfProDisplay(with: 20)
        lable.font = UIFont(name: "Noto Sans Kannada Bold", size: 20)
        return lable
    }()
    
    private let attentionView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "Attention")
        view.layer.cornerRadius = 12
        return view
    }()
    
    private let dayLable: UILabel = {
        let lable = UILabel()
        lable.text = "Daily"
        lable.textColor = .black
        //lable.font = Extensions.Font.sfProDisplay(with: 20)
        lable.font = UIFont(name: "Noto Sans Kannada Bold", size: 20)
        return lable
    }()
    
    
    //MARK: - WDL
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
}

extension MainController {
    func setup() {
        
        view.addSubview(hourLable)
        hourLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(333)
        }
        
        view.addSubview(dayCollectionView)
        dayCollectionView.snp.makeConstraints { maker in
            maker.leading.trailing.equalToSuperview().inset(16)
            maker.top.equalToSuperview().inset(373)
            maker.height.equalTo(107)
        }
        
        view.addSubview(dayLable)
        dayLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(504)
        }
        
        view.addSubview(weekCollectionView)
        weekCollectionView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(646)
            make.height.equalTo(240)
            //make.bottom.equalToSuperview().inset(16)
        }
        
        view.addSubview(mainCardView)
        mainCardView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(116)
            make.height.equalTo(193)
        }
        
        view.addSubview(attentionView)
        attentionView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(544)
            make.height.equalTo(86)
        }
            
        view.addSubview(pinImage)
        pinImage.image = UIImage(systemName: "location.circle.fill")
        pinImage.snp.makeConstraints { make in
            //make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview().inset(68)
            make.left.equalToSuperview().inset(16)
        }
        
        view.addSubview(locationButton)
        locationButton.snp.makeConstraints { make in
            //make.top.equalToSuperview().inset(71)
            make.left.equalToSuperview().inset(48)
            make.centerY.equalTo(pinImage)
        }
            
        view.addSubview(arrowButton)
        arrowButton.snp.makeConstraints { make in
            //make.top.equalToSuperview().inset(71)
            make.right.equalTo(locationButton).inset(-22)
            make.height.equalTo(8)
            make.width.equalTo(8)
            make.centerY.equalTo(pinImage)
        }
        }
    }

//MARK: - Selectors
private extension MainController {
   
}


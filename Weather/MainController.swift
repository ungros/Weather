//
//  MainController.swift
//  Weather
//
//  Created by Roman on 20.04.2023.
//

import UIKit
import SnapKit

class MainController: UIViewController, ConstraintRelatableTarget {
    
    private var dayCollectionView = DayCollectionView()
    private var weekCollectionView = WeeklyCollectionView()
    
//    private let pinImage: UIImage = {
//        let image = UIImage(named: "mappin.and.ellipse")
//        image?.withTintColor(UIColor(named: "Symbol")!)
//        return image! ?? default value
//    }()
    private let locationButton: UIButton = {
        let button = UIButton()
        
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
    private let dayLable: UILabel = {
        let lable = UILabel()
        lable.text = "Daily"
        lable.textColor = .black
        //lable.font = Extensions.Font.sfProDisplay(with: 20)
        lable.font = UIFont(name: "Noto Sans Kannada Bold", size: 20)
        return lable
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "Background")
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
            make.bottom.equalToSuperview().inset(16)
        }
        
            
            
        }
    }


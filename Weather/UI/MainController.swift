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
    
    private let rearchArea = SearchController(searchResultsController: ResultsController())
    
    private var dayCollectionView = HorszontalCollectionView()
    private var weekCollectionView = VerticalCollectionView()
    
    private let mainCardView = MainCardView()
    private let allertView = AllertCardView()
    
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
        button.setImage(UIImage(named: "caret_down"), for: .normal)
        button.tintColor = UIColor(named: "Symbol")
        button.sizeThatFits(CGSize(width: 24, height: 24))
        //button.addTarget(self, action: #selector(handlShowSearchScreen), for: .touchUpInside)
        return button
    }()
    
    private let searchButton: RootButton = {
        let button = RootButton(type: .system)
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
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
        navigationController?.isNavigationBarHidden = true
        
    }
    
    
}

extension MainController {
    func setup() {
        handlShowSearchScreen()
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
            make.left.right.equalToSuperview()
            make.width.equalToSuperview()
            make.top.equalToSuperview().inset(646)
            make.bottom.equalToSuperview()
            
        }
        
        view.addSubview(mainCardView)
        mainCardView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(116)
            make.height.equalTo(193)
        }
        
        view.addSubview(allertView)
        allertView.snp.makeConstraints { make in
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
            make.height.equalTo(24)
            make.width.equalTo(24)
            make.centerY.equalTo(pinImage)
        }
        
        view.addSubview(searchButton)
        searchButton.snp.makeConstraints { make in
            make.top.equalTo(locationButton)
            make.right.equalToSuperview().inset(16)
            make.centerY.equalTo(locationButton)
            make.height.equalTo(pinImage)
            make.width.equalTo(pinImage)
        }
        }
    
    }

//MARK: - URLService


//MARK: - Selectors
extension MainController {
    @objc func handlShowSearchScreen() {
        let controller = rearchArea
        present(rearchArea, animated: true)
    }
}


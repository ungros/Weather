//
//  HourViewCell.swift
//  Weather
//
//  Created by Roman on 19.04.2023.
//

import UIKit
import SnapKit

class HourViewCell: UICollectionViewCell {
    
    static let reuseId = "HourViewCell"
    
    let stackView: UIStackView! = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.layer.cornerRadius = 7
        stack.backgroundColor = UIColor(named: "Card")
        return stack
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        //urlRequest()
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HourViewCell {
    func setup() {
        
        addSubview(stackView)
       
        stackView.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    
//    @objc func urlRequest() {
//         let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current_weather=true"
//         let url = URL(string: urlString)!
//         let request = URLRequest(url: url)
//         let task = URLSession.shared.dataTask(with: request) {data, response, error in
//
//             //parse
//             if let data, let weather = try? JSONDecoder().decode(WeatherData.self, from: data) {
//                 DispatchQueue.main.async {
//                     self.temperature.text = "\(weather.currentWeather.temperature) C"
//                     self.timeX.text = "\(weather.currentWeather.time)"
//                 }
//             }else{
//                 print("error")
//             }
//         }
//         task.resume()
//     }
}



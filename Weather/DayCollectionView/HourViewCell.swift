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
        stack.layer.cornerRadius = 4
        stack.backgroundColor = UIColor(named: "Card")
        return stack
    }()
    
    let weatherImage: UIImageView = {
        let image = UIImageView()
        image.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: 20, height: 20))
        image.backgroundColor = .red
        return image
    }()
    
    let degreeLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont(name: "Noto Sans Kannada Bold", size: 14)
        lable.text = "20 C"
        return lable
    }()
    
    let timeLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont(name: "Noto Sans Kannada Regular", size: 14)
        lable.textColor = UIColor(named: "Text")
        lable.text = "4.00 PM"
        return lable
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
            make.centerX.centerY.equalToSuperview()
        }
        
        stackView.addArrangedSubview(weatherImage)
        weatherImage.snp.makeConstraints { make in
          
        
    
        }
        
        stackView.addSubview(degreeLable)
        degreeLable.snp.makeConstraints { make in
           
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(55)
            
        }
    
        stackView.addSubview(timeLable)
        timeLable.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(81)
            
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
    }
}

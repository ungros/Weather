//
//  MainCardView.swift
//  Weather
//
//  Created by Roman on 23.04.2023.
//
import SnapKit
import UIKit

class MainCardView: UIView {
    
    let weatherLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont(name: "Noto Sans Kannada Semibold", size: 20)
        lable.textColor = UIColor(named: "Background")
        return lable
    }()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 343, height: 193))
        layer.cornerRadius = 12
        backgroundColor = .systemBlue
        setup()
        getWeather()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
private extension MainCardView {
    func setup() {
        addSubview(weatherLable)
        weatherLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(100)
            make.top.equalToSuperview().inset(75)
        }
    }
}

extension MainCardView {
    func getWeather() {
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=34.90&longitude=56.19&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m"
        let url = URL(string: urlString)!
        let urlRequest = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let data, let weather = try? JSONDecoder().decode(WeatherData.self, from: data) {
                DispatchQueue.main.async {
                    self.weatherLable.text = "\(Int(weather.currentWeather.temperature))º C"
                }
            }else{
                return
            }
        }
        task.resume()
    }
}

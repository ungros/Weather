//
//  MainCardView.swift
//  Weather
//
//  Created by Roman on 23.04.2023.
//
import SnapKit
import UIKit

class MainCardView: UIView {
    
    let image: UIImageView = {
        let image = UIImageView()
        image.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: 55, height: 55))
        image.image = UIImage(named: "Cloud")
        return image
    }()
    
    let weatherLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont(name: "Noto Sans Kannada Semibold", size: 20)
        lable.textColor = UIColor(named: "Background")
        return lable
    }()
    
    let dateLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont(name: "Noto Sans Kannada Semibold", size: 14)
        lable.textColor = UIColor(named: "Background")
        lable.text = "Monte, 20 Desember 2023"
        return lable
    }()
    
    let locationLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont(name: "Noto Sans Kannada Bold", size: 20)
        lable.textColor = UIColor(named: "Background")
        lable.text = "San Francisco"
        return lable
    }()
    
    let updateLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont(name: "Noto Sans Kannada Semibold", size: 14)
        lable.textColor = UIColor(named: "Background")
        lable.text = "Last update 4.00 PM"
        return lable
    }()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 343, height: 193))
        layer.cornerRadius = 12
        backgroundColor = .systemBlue
        setup()
        getWeather()
    }
    
    private let arrowButton: RootButton = {
        let button = RootButton(type: .system)
        
        button.setImage(UIImage(systemName: "arrowtriangle.down.fill"), for: .normal)
        button.tintColor = UIColor(named: "Symbol")
        return button
    }()
    
    private let upDateButton: RootButton = {
        let button = RootButton(type: .system)
        button.setImage(UIImage(systemName: "cursorarrow.click.badge.clock"), for: .normal)
        button.tintColor = UIColor(named: "Background")
        //button.font.fontName = UIFont(name: "Noto Sans Kannada Bold", size: 20)
        return button
    }()
    
//    private let searchButton: RootButton = {
//        let button = RootButton(type: .system)
//        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
//        button.tintColor = UIColor(named: "Background")
//        return button
//    }()
    
    let timeLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont(name: "Noto Sans Kannada Semibold", size: 14)
        lable.textColor = UIColor(named: "Background")
        lable.text = "4.00 PM"
        return lable
    }()
    
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
        
        addSubview(locationLable)
        locationLable.snp.makeConstraints { make in
            make.left.equalTo(weatherLable)
            make.top.equalToSuperview().inset(104)
        }
        
        addSubview(dateLable)
        dateLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalToSuperview().inset(24)
        }
        
        addSubview(image)
        image.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview().inset(66)
        }
        
        addSubview(updateLable)
        updateLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.bottom.equalToSuperview().inset(24)
        }
        
        addSubview(upDateButton)
        upDateButton.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(190)
            make.height.equalTo(16)
            make.width.equalTo(16)
            make.center.equalTo(updateLable)
        }
        
        addSubview(timeLable)
        timeLable.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(24)
            make.top.equalToSuperview().inset(24)
        }
    }
}

//MARK: - URLService
extension MainCardView {
    
    func getCurrentTime() -> String {
        let date = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: date)
    }
    
    func getWeather() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=34.90&longitude=56.19&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m"
        let url = URL(string: urlString)!
        let urlRequest = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let data, let weather = try? JSONDecoder().decode(Weather.self, from: data) {
                DispatchQueue.main.async {
                    self.weatherLable.text = "\(Int(weather.currentWeather.temperature))º C"
                    self.timeLable.text = "\(timeFormatter.string(from: weather.currentWeather.time))"
                }
            }else{
                return
            }
        }
        task.resume()
    }
}

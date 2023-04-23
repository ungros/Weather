//
//  URLSession.swift
//  Weather
//
//  Created by Roman on 23.04.2023.
//

import Foundation

class urlS {
    func getWeather() {
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=34.90&longitude=56.19&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m"
        let url = URL(string: urlString)!
        let urlRequest = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let data, let weather = try? JSONDecoder().decode(WeatherData.self, from: data) {
                
            }else{
                return
            }
        }
        task.resume()
    }
}

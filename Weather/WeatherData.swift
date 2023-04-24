//
//  WeatherData.swift
//  Weather
//
//  Created by Roman on 19.04.2023.
//

//import Foundation
//
//struct WeatherData: Decodable {
//    let latitude, longitude, generationtimeMS: Double
//    let utcOffsetSeconds: Int
//    let timezone, timezoneAbbreviation: String
//    let elevation: Int
//    let currentWeather: CurrentWeather
//    //let hourlyWeather: [HourlyWeather]
//
//    enum CodingKeys: String, CodingKey {
//        case latitude, longitude
//        case generationtimeMS = "generationtime_ms"
//        case utcOffsetSeconds = "utc_offset_seconds"
//        case timezone
//        case timezoneAbbreviation = "timezone_abbreviation"
//        case elevation
//        case currentWeather = "current_weather"
//        //case hourly = "hourly"
//    }
//}
//
//struct CurrentWeather: Decodable {
//    let temperature, windspeed: Double
//    let winddirection, weathercode: Int
//    let time: String
//}
//
//struct HourlyWeather {
//    let temperature, windspeed: Double
//    let winddirection, weathercode: Int
//    let time: String
//}
//
////extension WeatherData {
////    let urlString = "https://api.open-meteo.com/v1/forecast?latitude=34.90&longitude=56.19&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m_10m"
////
////    let apiService = APIService.shared
////    apiService.getJSON(urlString: urlString) {(result: Result<WeatherData,APIService.APIError>) in
////        <#code#>
////    }
////}

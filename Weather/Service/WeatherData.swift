//
//  WD2.swift
//  Weather
//
//  Created by Roman on 24.04.2023.
//

import Foundation

// MARK: - Weather
struct Weather: Decodable {
    let latitude, longitude, generationtimeMS: Double
    let utcOffsetSeconds: Int
    let timezone, timezoneAbbreviation: String
    let elevation: Int
    let currentWeather: CurrentWeather
    let hourlyUnits: HourlyUnits

    enum CodingKeys: String, CodingKey {
        case latitude, longitude
        case generationtimeMS = "generationtime_ms"
        case utcOffsetSeconds = "utc_offset_seconds"
        case timezone
        case timezoneAbbreviation = "timezone_abbreviation"
        case elevation
        case currentWeather = "current_weather"
        case hourlyUnits = "hourly_units"
    }
}

// MARK: - CurrentWeather
struct CurrentWeather: Decodable {
    let temperature, windspeed: Double
    let winddirection, weathercode, isDay: Int
    let time: String

    enum CodingKeys: String, CodingKey {
        case temperature, windspeed, winddirection, weathercode
        case isDay = "is_day"
        case time
    }
}

// MARK: - HourlyUnits
struct HourlyUnits: Decodable {
    let time, temperature2M, relativehumidity2M, windspeed10M: String

    enum CodingKeys: String, CodingKey {
        case time
        case temperature2M = "temperature_2m"
        case relativehumidity2M = "relativehumidity_2m"
        case windspeed10M = "windspeed_10m"
    }
}

//
//  Weather.swift
//  Weather
//
//  Created by Claudia Maciel on 3/24/21.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let current: Current
    let hourly: [Hourly]
    let daily: [Daily]
}

// MARK: - Current
struct Current: Codable {
    let dt: Int
    let temp: Double
    let weather: [CurrentWeather]
}

// MARK: - CurrentWeather
struct CurrentWeather: Codable {
    let main: Main
}

enum Main: String, Codable {
    case clear = "Clear"
    case clouds = "Clouds"
    case rain = "Rain"
    case thunderstorm = "Thunderstorm"
    case drizzle = "Drizzle"
    case snow = "Snow"
}

// MARK: - Daily
struct Daily: Codable {
    let dt: Int
    let temp: Temp
    let weather: [DailyWeather]
}

// MARK: - Temp
struct Temp: Codable {
    let day: Double
}

// MARK: - DailyWeather
struct DailyWeather: Codable {
    let id: Int
    let main: Main
}

// MARK: - Hourly
struct Hourly: Codable {
    let dt: Int
    let temp: Double
    let weather: [DailyWeather]
}


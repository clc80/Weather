//
//  NetworkServices.swift
//  Weather
//
//  Created by Claudia Maciel on 3/24/21.
//

import Foundation

let API_KEY = "bea1df06bbf6bd07ec0f1bdb0e9b89f3"

let lat = 36.570450
let long = -121.518547
let units = "imperial"

let url = "https://api.openweathermap.org/data/2.5/onecall?lat=\(lat)&lon=\(long)&units=\(units)&appid=\(API_KEY)"


//
//  NetworkServices.swift
//  Weather
//
//  Created by Claudia Maciel on 3/24/21.
//

import Foundation
import UIKit

class NetworkService {
    
    static let shared = NetworkService()
    
    let lat = 36.570450
    let long = -121.518547
    let units = "imperial"
    let exclude = "minutely, alerts"
    
    let session = URLSession(configuration: .default)
    
    func getWeather(onSuccess: @escaping(Weather) -> Void, onError: @escaping(String) -> Void) {
        
        let urlString = "https://api.openweathermap.org/data/2.5/onecall?lat=\(lat)&lon=\(long)&units=\(units)&exclude=\(exclude)&appid=\(API_KEY)"
        
        let url = URL(string: urlString)!
        
        let task = session.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    onError(error.localizedDescription)
                    return
                }
                
                guard let data = data,
                      let response = response as? HTTPURLResponse else {
                        onError("Invalid data or response")
                        return
                      }
                do {
                    if response.statusCode == 200 {
                        let weather = try JSONDecoder().decode(Weather.self, from: data)
                        onSuccess(weather)
                    }
                } catch {
                    onError(error.localizedDescription)
                }
            }
        }
        task.resume()
    }
}



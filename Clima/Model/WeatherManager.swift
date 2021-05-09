//
//  WeatherManager.swift
//  Clima
//
//  Created by Apple on 08/05/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=5ffb7f03513731287e1184d5761bd69e&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        // 1.Create a url
        if let url = URL(string: urlString){
            // Create a UrlSession
            let session = URLSession(configuration: .default)
            // 3. Give the session a task
           let task = session.dataTask(with: url, completionHandler: handle(data: response: error: ))
            // 4. Start the task
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?){
        if error != nil {
            print(error!)
            return
        }
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString )
        }
    }
}

//
//  WeatherData.swift
//  Clima
//
//  Created by Apple on 11/05/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
}

struct Main: Decodable {
    let temp: Double
}

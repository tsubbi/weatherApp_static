//
//  CityTabBarViewController.swift
//  Assignment4
//
//  Created by Jamie Chen on 2021-05-03.
//  Copyright © 2021 Derrick Park. All rights reserved.
//

import UIKit

class CityTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 5 cities
        let cities: [City] = [
            City(name: "Vancouver", temp: 15, precipitation: 95, icon: "canada", summary: "Rainy"),
            City(name: "Verona", temp: 22, precipitation: 20, icon: "italy", summary: "Cloudy"),
            City(name: "Tokyo", temp: 24, precipitation: 40, icon: "japan", summary: "Sunny"),
            City(name: "Sao Paulo", temp: 32, precipitation: 20, icon: "brazil", summary: "Sunny"),
            City(name: "Seoul", temp: 35, precipitation: 50, icon: "skorea", summary: "Sunny")
        ]
        
        self.viewControllers = cities.map { self.embedInNavController(cityData: $0) }
    }
    
    private func embedInNavController(cityData: City) -> UINavigationController {
        let CityVC = CityViewController()
        CityVC.city = cityData
        CityVC.tabBarItem = UITabBarItem(title: cityData.name, image: UIImage(named: cityData.icon), selectedImage: nil)
        return UINavigationController(rootViewController: CityVC)
    }
}

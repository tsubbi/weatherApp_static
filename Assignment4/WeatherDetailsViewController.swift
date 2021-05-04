//
//  WeatherDetailsViewController.swift
//  Assignment4
//
//  Created by Jamie Chen on 2021-05-03.
//  Copyright © 2021 Derrick Park. All rights reserved.
//

import UIKit

class WeatherDetailsViewController: UIViewController {

    var city: City!
    let displayView: UIStackView = {
        let stackV = UIStackView()
        stackV.axis = .vertical
        stackV.alignment = .center
        stackV.distribution = .equalSpacing
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.addSubview(UIView())
        return stackV
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        setupView()
        layoutView()
    }
    
    private func setupView() {
        if let icon = City.CountryEmoji(rawValue: self.city.icon)?.emoji {
            let titles: [[Any]] = [["Country", icon], ["City", self.city.name], ["Temperture", "\(self.city.temp)℃"], ["Summary", self.city.summary]]
            for title in titles {
                let titleLabel = UILabel()
                titleLabel.text = title.first as? String
                titleLabel.font = .boldSystemFont(ofSize: 24)
                self.displayView.addArrangedSubview(titleLabel)
                
                let contentLabel = UILabel()
                contentLabel.text = title.last as? String ?? "null"
                self.displayView.addArrangedSubview(contentLabel)
            }
        }
        
        self.view.addSubview(self.displayView)
    }
    
    private func layoutView() {
        let safeArea = self.view.safeAreaLayoutGuide
        self.displayView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        self.displayView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        self.displayView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor).isActive = true
        self.displayView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 4/5).isActive = true
    }
}

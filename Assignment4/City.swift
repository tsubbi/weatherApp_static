//
//  City.swift
//  Assignment3
//
//  Created by Derrick Park on 2018-10-05.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import Foundation

struct City {
	let name: String
	let temp: Double
	let precipitation: Double
	let icon: String
	let summary: String
}

extension City {
    enum CountryEmoji: String {
        case canada
        case italy
        case japan
        case brazil
        case southKorea = "skorea"
        
        var emoji: String {
            switch self {
            case .brazil:
                return "\u{1F1E7}\u{1F1F7}"
            case .canada:
                return "\u{1F1E8}\u{1F1E6}"
            case .italy:
                return "\u{1F1EE}\u{1F1F9}"
            case .japan:
                return "\u{1F1EF}\u{1F1F5}"
            case .southKorea:
                return "\u{1F1F0}\u{1F1F7}"
            }
        }
    }
}

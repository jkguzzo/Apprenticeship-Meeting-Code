//
//  Transportation.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import Foundation

enum Transportation: String, CaseIterable {
    // TODO: define car, bike, walk, bus, plane case
    case car
    
    // TODO: define speed Double variable
    // car -> 60, bike -> 12, walk -> 3, bus -> 30, plane -> 600
    var speed: Double {
        return 60 // placeholder value
    }
    // TODO: define icon String variable with corresponding SF symbol
    // car -> "car.fill", bike -> "bicycle", walk -> "figure.walk", bus -> "bus.fill", plane -> "airplane"
    var icon: String {
        return "car.fill" // placeholder value
    }
}

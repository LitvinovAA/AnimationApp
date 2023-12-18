//
//  Figure.swift
//  AnimationApp
//
//  Created by Alexey on 06.09.2023.
//

import Foundation

struct Animation: CustomStringConvertible {
    let name: String
    let curve: String
    let duration: Double
    let force: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static var randomAnimation: Animation {
        Animation(
        name: DataStore.shared.animations.randomElement()?.rawValue ?? "shake",
        curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeInCirc",
        duration: Double.random(in: 0.5...2.0),
        force: Double.random(in: 0.5...2.0),
        delay: 1.0
        )
    }
}


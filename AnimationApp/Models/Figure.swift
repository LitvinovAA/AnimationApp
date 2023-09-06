//
//  Figure.swift
//  AnimationApp
//
//  Created by Alexey on 06.09.2023.
//

import Foundation

struct Figure {
    
    let animation: String
    let curve: String
    let duration: Double
    let force: Double
    let delay: Double
    
    
    static func getFigure() -> Figure {
                
        let animation = DataStore.shared.Animations.randomElement() ?? "shake"
        let curve = DataStore.shared.Curves.randomElement() ?? "easeInCirc"
        let duration = Double.random(in: 0.5...2.0)
        let force = Double.random(in: 0.5...2.0)
        let delay = 1.0

        return Figure(animation: animation, curve: curve, duration: duration, force: force, delay: delay)
    }
}


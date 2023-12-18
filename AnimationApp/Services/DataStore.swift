//
//  DataStore.swift
//  AnimationApp
//
//  Created by Alexey on 06.09.2023.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    
    let animations: [AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOutIn,
        .fadeOut,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .wobble,
        .zoomIn
    ]
    
//    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}

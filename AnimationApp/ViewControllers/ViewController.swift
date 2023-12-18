//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alexey on 06.09.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.randomAnimation
    
    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.animation = "zoomOut"
        animationLabel.x = 50
        animationLabel.animate()
        animationLabel.text = animation.description
        
        animationLabel.animateNext { [unowned self] in
            animationLabel.animation = "zoomIn"
            animationLabel.animate()
        }
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.duration = animation.duration
        springAnimationView.force = animation.force
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        animation = Animation.randomAnimation
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

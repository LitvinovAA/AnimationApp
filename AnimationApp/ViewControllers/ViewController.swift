//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alexey on 06.09.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runButton: SpringButton!
    
    private var figureNext = Figure.getFigure()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels(with: figureNext)
    }


    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        setupLabels(with: figureNext)
        springAnimationView.configure(with: figureNext)
        springAnimationView.animate()
            
        figureNext = Figure.getFigure()
        runButton.setTitle("Run \(figureNext.animation)", for: .normal)
    }
    
    private func setupLabels(with figure: Figure) {
        presetLabel.text = "preset: \(figure.animation)"
        curveLabel.text = "curve: \(figure.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", figure.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", figure.duration))"
        delayLabel.text = "delay: \(String(format: "%.1f", figure.delay))"
    }
}

private extension SpringView {
    func configure(with figure: Figure) {
        animation = figure.animation
        curve = figure.curve
        force = figure.force
        duration = figure.duration
        delay = figure.delay
    }
}

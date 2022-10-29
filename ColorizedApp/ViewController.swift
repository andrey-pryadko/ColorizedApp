//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Andrey Pryadko on 29/10/2022.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IB Outlets
    @IBOutlet var mainView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadColorsOfMainView()
    }

// MARK: IB Actions
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        reloadColorsOfMainView()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        reloadColorsOfMainView()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        reloadColorsOfMainView()
    }

// MARK: Private Methods
    private func reloadColorsOfMainView() {
        mainView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    
}



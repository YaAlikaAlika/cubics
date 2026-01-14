//
//  ViewController.swift
//  cubics
//
//  Created by Алина on 28.11.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCubic: UIImageView!
    @IBOutlet weak var rightCubic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let elements: [UIImageView] = [leftCubic, rightCubic]
        for imageView in elements {
            let random = Int.random(in: 1...6)
            let image = UIImage (named: "cubic\(random)")
            UIView.transition(with: imageView, duration: 0.2, options: .transitionCrossDissolve) {
                imageView.image = image
            }
        }
        
    }
}

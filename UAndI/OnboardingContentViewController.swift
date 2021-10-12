//
//  OnboardingContentViewController.swift
//  UAndI
//
//  Created by Adam Kane on 01/10/2021.
//

import Foundation
import UIKit

class OnboardingContentViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var introLabel: UILabel! {
        didSet {
            introLabel.numberOfLines = 0
        }
    }
    
    var index: Int = 0
    var intro: String = ""
    var imageName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: imageName)
        introLabel.text = intro
    }
}

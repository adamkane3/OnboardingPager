//
//  ViewController.swift
//  UAndI
//
//  Created by Adam Kane on 01/10/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let onboardingViewController = storyboard.instantiateViewController(withIdentifier: "OnboardingViewController") as? OnboardingViewController {
            present(onboardingViewController, animated: true, completion: nil)
        }
    }


}

